`timescale 1 ps / 1 ps
`default_nettype none

module systolic
#
(
    parameter   D_W  = 8, //operand data width
    parameter   D_W_ACC = 16, //accumulator data width
    parameter   N1   = 4,
    parameter   N2   = 4,
    parameter   M    = 8
)
(
    input   wire                                        clk,
    input   wire                                        rst,
    input   wire                                        enable_row_count_A,
    output  wire    [$clog2(M)-1:0]                     pixel_cntr_A,
    output  wire    [($clog2(M/N1)?$clog2(M/N1):1)-1:0] slice_cntr_A,
    output  wire    [($clog2(M/N2)?$clog2(M/N2):1)-1:0] pixel_cntr_B,
    output  wire    [$clog2(M)-1:0]                     slice_cntr_B,
    output  wire    [$clog2((M*M)/N1)-1:0]              rd_addr_A,
    output  wire    [$clog2((M*M)/N2)-1:0]              rd_addr_B,
    input   wire    [D_W-1:0]                           A [N1-1:0], //m0
    input   wire    [D_W-1:0]                           B [N2-1:0], //m1
    output  wire    [D_W_ACC-1:0]                       D [N1-1:0], //m2
    output  wire    [N1-1:0]                             valid_D
);

wire    [D_W-1:0]         out_a      [N1-1:0][N2-1:0];
wire    [D_W-1:0]         out_b      [N1-1:0][N2-1:0];
wire    [D_W-1:0]         in_a       [N1-1:0][N2-1:0];
wire    [D_W-1:0]         in_b       [N1-1:0][N2-1:0];
wire    [N2-1:0]          in_valid   [N1-1:0];
wire    [N2-1:0]          out_valid  [N1-1:0];
wire    [(D_W_ACC)-1:0]   in_data    [N1-1:0][N2-1:0];
wire    [(D_W_ACC)-1:0]   out_data   [N1-1:0][N2-1:0];

reg     [N2-1:0]          init_pe    [N1-1:0];
reg     [D_W-1:0]         A_reg      [N1-1:0];
reg     [D_W-1:0]         B_reg      [N2-1:0];

reg [($clog2(M/N1)?$clog2(M/N1):1)-1:0] sliceA_reg;
reg [($clog2(M/N2)?$clog2(M/N2):1)-1:0] pixelB_reg;
reg init_pe_reg [N1-1:0][N2-1:0];

control #
(
  .N1       (N1),
  .N2       (N2),
  .M        (M)
)
control_inst
(

  .clk                  (clk),
  .rst                  (rst),
  .enable_row_count     (enable_row_count_A),

  .pixel_cntr_B         (pixel_cntr_B),
  .slice_cntr_B         (slice_cntr_B),

  .pixel_cntr_A         (pixel_cntr_A),
  .slice_cntr_A         (slice_cntr_A),

  .rd_addr_A            (rd_addr_A),
  .rd_addr_B            (rd_addr_B)
);

// enter your RTL here

always @ (posedge clk) begin
  A_reg <= A;
  B_reg <= B;
end

//generating the PE systolic array
genvar row,col;
generate
  for(row = 0; row <= N1-1; row = row + 1) begin : row_counter
    for(col = 0; col <= N2-1; col = col + 1) begin : col_counter
      pe #
        (
          .D_W_ACC   (D_W_ACC), 
          .D_W       (D_W)
        ) 
        pe_stream
        (
          .clk          (clk),
          .rst          (rst),
          .init         (init_pe[row][col]),
          .in_a         (in_a[row][col]),
          .in_b         (in_b[row][col]),
          .out_a        (out_a[row][col]),
          .out_b        (out_b[row][col]),
          .in_data      (in_data[row][col]),
          .in_valid     (in_valid[row][col]),
          .out_data     (out_data[row][col]),
          .out_valid    (out_valid[row][col])
        );

      //horizontal wires
      if (col == 0) begin
        assign in_a[row][col] = A_reg[row];
        assign in_valid[row][col] = 0;
        assign in_data[row][col] = 0;
      end else begin
        assign in_a[row][col] = out_a[row][col-1];
        assign in_valid[row][col] = out_valid[row][col-1];
        assign in_data[row][col] = out_data[row][col-1];
      end

      // D_out
      if (col == N2-1) begin
        assign valid_D[row] = out_valid[row][col];
        assign D[row] = out_data[row][col];
      end

      //vertical wires
      if (row == 0) assign in_b[row][col] = B_reg[col];
      else assign in_b[row][col] = out_b[row-1][col];

      //pe_init signals
      always @ (posedge clk) begin
        init_pe[row][col] <= init_pe_reg[row][col];
      end

      //init_pe propagation
      always @(posedge clk) begin
        if(rst && row!=0 && col!=0) begin
          init_pe_reg[row][col] <= 0;
        end else begin
          if(col==0 && row!=0) begin
            init_pe_reg[row][col] <= init_pe_reg[row-1][col];
          end else if(col!=0 && row==0) begin 
            init_pe_reg[row][col] <= init_pe_reg[row][col-1];
          end else if(row!=0 && col!=0) begin
            init_pe_reg[row][col] <= init_pe_reg[row][col-1];
          end
        end
      end
    end
  end
endgenerate

//init_pe generation based on slice and pixel counters
always @(posedge clk) begin
  if(rst) begin
    init_pe_reg[0][0] <= 1'b0;
    sliceA_reg <= 0;
    pixelB_reg <= 0;
  end else if(sliceA_reg != slice_cntr_A || pixelB_reg != pixel_cntr_B) begin
    init_pe_reg[0][0] <= 1'b1;
  end else begin
    init_pe_reg[0][0] <= 1'b0;
  end
  sliceA_reg <= slice_cntr_A;
  pixelB_reg <= pixel_cntr_B;
end

endmodule