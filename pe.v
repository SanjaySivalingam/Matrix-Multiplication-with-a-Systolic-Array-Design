`timescale 1 ps / 1 ps

module pe
#(
    parameter   D_W_ACC  = 64, //accumulator data width
    parameter   D_W      = 32  //operand data width
)
(
    input   wire                    clk,
    input   wire                    rst,
    input   wire                    init,
    input   wire    [D_W-1:0]       in_a,
    input   wire    [D_W-1:0]       in_b,
    output  reg     [D_W-1:0]       out_b,
    output  reg     [D_W-1:0]       out_a,

    input   wire    [(D_W_ACC)-1:0] in_data,
    input   wire                    in_valid,
    output  reg     [(D_W_ACC)-1:0] out_data,
    output  reg                     out_valid
);

// Insert your RTL here

reg [D_W_ACC-1:0] mac;
reg in_valid_reg;
reg [D_W_ACC-1:0] in_data_reg;

//handling output muxing
always @ (posedge clk) begin
    if (rst) begin
        out_data <= 1'b0;
        out_valid <= 1'b0;
    end else if (init) begin
        out_valid <= 1'b1;
        out_data <= mac;
    end else begin
        out_valid <= 1'b0;
    end
    if (in_valid_reg) begin
        out_valid <= in_valid_reg;
        out_data <= in_data_reg;
    end
end

//handling incoming input
always @ (posedge clk) begin
    if (rst) begin
        in_valid_reg <= 1'b0;
        in_data_reg <= 1'b0;
    end else if(in_valid) begin
        in_valid_reg <= 1'b1;
        in_data_reg <= in_data;
    end else begin
        in_valid_reg <= 1'b0;
        in_data_reg <= 1'b0;
    end
end

//mac
always @ (posedge clk) begin
    if (rst) begin
        mac <= 1'b0;
        out_a <= 1'b0;
        out_b <= 1'b0;
    end else begin
        out_a <= in_a;
        out_b <= in_b;
        if (init)
            mac <= in_a * in_b;
        else
            mac <= in_a * in_b + mac;
    end
end

endmodule

