# QICK Time Tagger Peripheral

## Description 

Peripheral that reads an AXI Stream of ADC values packed in a N_S sized tdata array where N_S*c_clk = ADC Sample Period and detects an edge crossing indicating a photon arrival event. 

Photon arrival times are stored inside a FIFO with a user specified depth and can be read out through either a PYNQ register read command facilitated by an AXILITE4 interfaces from ZYNQ processor or read out in an experimental sequence from the tproc through the tprocs QPeripheral interface. 

Latency of Time of Arrival events relative to an arming time stored in time tagger is currently less than 4 c_clk cycles allowing for fast readout to the proc. 

## Notes 
Peripheral is still being developed as of March 5th

The axi_slv_qp module is part of Fermilab IP and cannot be shared on this public repository. 




