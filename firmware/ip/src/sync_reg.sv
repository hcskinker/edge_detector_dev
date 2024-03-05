///////////////////////////////////////////////////////////////////////////////
//  FERMI RESEARCH LAB
///////////////////////////////////////////////////////////////////////////////
//  Author         : Martin Di Federico
//  Date           : 1-2024
//  Version        : 1
///////////////////////////////////////////////////////////////////////////////
//  QICK PROCESSOR :  Custom Peripheral Template
/* Description: 
    File to add all the custom IPs needed for the peripheral
*/
//////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
/// Clock Domain Register Change
///////////////////////////////////////////////////////////////////////////////


module sync_reg # (
   parameter DW  = 32
)(
   input  wire [DW-1:0] dt_i     , 
   input  wire          clk_i  ,
   input  wire          rst_ni  ,
   output wire [DW-1:0] dt_o     );
   
(* ASYNC_REG = "TRUE" *) reg [DW-1:0] data_rcd, data_r ;
always_ff @(posedge clk_i)
   if(!rst_ni) begin
      data_rcd  <= 0;
      data_r    <= 0;
   end else begin 
      data_rcd  <= dt_i;
      data_r    <= data_rcd;
      end
assign dt_o = data_r ;

endmodule