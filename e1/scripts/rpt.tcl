echo "################################################################################" >  report/timing.rpt
echo "# default timing report"                                                          >> report/timing.rpt
echo "################################################################################" >> report/timing.rpt
report_timing -to D0                                                                    >> report/timing.rpt
report_timing -to D0 -delay min                                                         >> report/timing.rpt

set_multicycle_path 2 -setup -from [get_clocks CLKP] -to [get_clocks CLKM] -start
echo "################################################################################" >> report/timing.rpt
echo "# multicycle setup timing report"                                                 >> report/timing.rpt
echo "################################################################################" >> report/timing.rpt
report_timing -to D0                                                                    >> report/timing.rpt
report_timing -to D0 -delay min                                                         >> report/timing.rpt

set_multicycle_path 1 -hold -from [get_clocks CLKP] -to [get_clocks CLKM] -start
echo "################################################################################" >> report/timing.rpt
echo "# multicycle hold timing report"                                                  >> report/timing.rpt
echo "################################################################################" >> report/timing.rpt
report_timing -to D0                                                                    >> report/timing.rpt
report_timing -to D0 -delay min                                                         >> report/timing.rpt

