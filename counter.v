`timescale 1 ps / 1 ps

module counter
#(
    parameter   WIDTH   = 32,
    parameter   HEIGHT  = 32
)
(
  input   wire                            clk,
  input   wire                            rst,
  input   wire			                      enable_row_count,
  output  reg     [($clog2(WIDTH)?$clog2(WIDTH):1)-1:0]     pixel_cntr,
  output  reg     [($clog2(HEIGHT)?$clog2(HEIGHT):1)-1:0]    slice_cntr

);

localparam [1:0] S_RST = 2'b00, S0 = 2'b01, S1 = 2'b10;

reg flag;
reg[1:0] pixel_state;
reg[1:0] slice_state;

/* Pixel (col) counter */
always @(posedge clk) begin: pixel_stmc
  if(rst) begin
    pixel_state <= S0;
    pixel_cntr <= 0;
    flag <= 1'b0;
  end else begin
    case(pixel_state)
      S_RST : begin
        pixel_cntr <= 0;
        pixel_state <= S0;
        flag <= 1'b0;
      end
      S0 : begin
        if(pixel_cntr != WIDTH-2) begin
          pixel_cntr <= pixel_cntr + 1;
          pixel_state <= S0;
        end else begin
          pixel_cntr <= WIDTH-1;
          pixel_state <= S1;
          flag <= 1'b1;
        end
      end
      S1 : begin
        pixel_cntr <= 0;
        pixel_state <= S0;
        flag <= 1'b0;
      end
      default: begin
        pixel_cntr <= pixel_cntr;
        pixel_state <= pixel_state; 
        flag <= flag;
      end
    endcase
  end
end

/* Slice (row) counter */
always @(posedge clk) begin: slice_stmc
  if(rst) begin
    slice_state <= S0;
    slice_cntr <= 0;
  end else begin
    case(slice_state)
      S_RST : begin
        slice_cntr <= 0;
        slice_state <= S0;
      end
      S0 : begin
        if(slice_cntr != HEIGHT-2 && enable_row_count && flag) begin
          slice_cntr <= slice_cntr + 1;
        end else if(enable_row_count && flag) begin
          slice_cntr <= HEIGHT-1;
          slice_state <= S1;
        end else begin
          slice_cntr <= slice_cntr;
          slice_state <= S0;
        end
      end
      S1 : begin
        if(enable_row_count && flag) begin
          slice_cntr <= 0;
          slice_state <= S0;
        end else begin
          slice_cntr <= slice_cntr;
          slice_state <= S1;
        end
      end
      default: begin
          slice_cntr <= slice_cntr;
          slice_state <= slice_state;
      end
    endcase
  end
end

endmodule
