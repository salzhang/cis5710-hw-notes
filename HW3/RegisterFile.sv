`define REG_SIZE 31:0
module RegFile (
    input logic [4:0] rd, //rd is the destination to write
    input logic [`REG_SIZE] rd_data,//rd_data is the data to be written
    input logic [4:0] rs1,//rs1 is the source to read
    output logic [`REG_SIZE] rs1_data,//rs1_data is the data to be read
    input logic [4:0] rs2,//rs1 is the source to read
    output logic [`REG_SIZE] rs2_data,//rs1_data is the data to be read

    input logic clk,
    input logic we,//Write Enable
    input logic rst
);
  localparam int NumRegs = 32;
  logic [`REG_SIZE] regs[NumRegs]; //32*32bit register array
  assign regs[0]  = 32'b0;     //x0 is always zero
  assign rs1_data = regs[rs1]; //1st read port
  assign rs2_data = regs[rs2]; // 2nd read port
  always_ff@(posedge clk) begin
    if(rst) begin
        regs[1]  <= 32'b0;  regs[2]  <= 32'b0;  regs[3]  <= 32'b0;  regs[4] <= 32'b0;
        regs[5]  <= 32'b0;  regs[6]  <= 32'b0;  regs[7]  <= 32'b0;  regs[8] <= 32'b0;
        regs[9]  <= 32'b0;  regs[10] <= 32'b0;  regs[11] <= 32'b0;  regs[12] <= 32'b0;
        regs[13] <= 32'b0;  regs[14] <= 32'b0;  regs[15] <= 32'b0;  regs[16] <= 32'b0;
        regs[17] <= 32'b0;  regs[18] <= 32'b0;  regs[19] <= 32'b0;  regs[20] <= 32'b0;
        regs[21] <= 32'b0;  regs[22] <= 32'b0;  regs[23] <= 32'b0;  regs[24] <= 32'b0;
        regs[25] <= 32'b0;  regs[26] <= 32'b0;  regs[27] <= 32'b0;  regs[28] <= 32'b0;
        regs[29] <= 32'b0;  regs[30] <= 32'b0;  regs[31] <= 32'b0;
    end
    if(we==1&&rd!=0) begin //We only allow write when rd is not zero
      regs[rd] <= rd_data;
    end
  end
