create_clock -name CLKP -period 5  -waveform {0 2.5} [get_ports CLKP]
create_clock -name CLKM -period 20 -waveform {0 10}  [get_ports CLKM]

