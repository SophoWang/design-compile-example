module Fsat2Slow(CLKP, CLKM, DIN, DOUT);
input CLKP;
input CLKM;
input DIN;
output DOUT;

reg D0;
reg D1;

always @(posedge CLKP) begin
    D0 <= DIN;
end

always @(posedge CLKM) begin
    D1 <= D0;
end

assign DOUT = D1;

endmodule
