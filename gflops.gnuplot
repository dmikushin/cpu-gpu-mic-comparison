#!/usr/bin/gnuplot

set term postscript eps enhanced color

set style data lines
set style line 1  linetype -1 linewidth 3 lc rgb "#005197"
set style line 2  linetype -1 linewidth 3 lc rgb "#00D317"
set style line 3  linetype -1 linewidth 3 lc rgb "#971c00"
set style line 4  linetype -1 linewidth 3 lc rgb "#000000"
set style increment user

set size 1.40,1.30
set border linewidth 1.5

#set logscale y
#set format y "10^{%L}"
set xrange [2006.4:2018.6]
set key samplen 6 spacing 3.0
set key left top
set grid lw 3
set ylabel "GFLOP/sec"
set xlabel "End of Year"

set yrange [30:30000]
set output "gflops-sp.eps"
set title "Theoretical Peak Performance, Single Precision"

# Labels AMD
set label "HD 3870"         at 2007,350  center rotate by 40 textcolor rgb "#971c00"
set label "HD 4870"         at 2008,1700 center rotate by 40 textcolor rgb "#971c00"
set label "HD 5870"         at 2009,4000 center rotate by 40 textcolor rgb "#971c00"
set label "HD 6970"         at 2010,4000 center rotate by 40 textcolor rgb "#971c00"
set label "HD 6970"         at 2011,4000 center rotate by 40 textcolor rgb "#971c00"
set label "HD 7970 GHz Ed." at 2012,6000 center rotate by 40 textcolor rgb "#971c00"
set label "HD 8970"         at 2013,3300 center rotate by 20 textcolor rgb "#971c00"
set label "FirePro W9100"   at 2014,3700 center rotate by 20 textcolor rgb "#971c00"
set label "FirePro S9150"   at 2015,4000 center rotate by 20 textcolor rgb "#971c00"
set label "MI25"            at 2016,22000 center rotate by 40 textcolor rgb "#971c00"
set label "MI60"            at 2018,7000 center rotate by 40 textcolor rgb "#971c00"

# Labels Intel
set label "X5482"         at 2007,80   center rotate by 40 textcolor rgb "#005197"
set label "X5492"         at 2008,80   center rotate by 40 textcolor rgb "#005197"
set label "W5590"         at 2009,80   center rotate by 40 textcolor rgb "#005197"
set label "X5680"         at 2010,120  center rotate by 40 textcolor rgb "#005197"
set label "X5690"         at 2011,120  center rotate by 40 textcolor rgb "#005197"
set label "E5-2690"       at 2012,250  center rotate by 40 textcolor rgb "#005197"
set label "E5-2697 v2"    at 2013,350  center rotate by 40 textcolor rgb "#005197"
set label "E5-2699 v3"    at 2014,900  center rotate by 40 textcolor rgb "#005197"
set label "E5-2699 v3"    at 2015,900 center rotate by 40 textcolor rgb "#005197"
set label "E5-2699 v4"    at 2016,1100 center rotate by 40 textcolor rgb "#005197"
set label "Platinum 8180" at 2017,2500 center rotate by 40 textcolor rgb "#005197"
set label "Platinum 9282" at 2018,5000 center rotate by 40 textcolor rgb "#005197"

# Labels NVIDIA
set label "8800 GTS"       at 2007,900   center rotate by 40 textcolor rgb "#00D317"
set label "GTX 280"        at 2008,650   center rotate by 40 textcolor rgb "#00D317"
set label "GTX 285"        at 2009,700   center rotate by 40 textcolor rgb "#00D317"
set label "GTX 580"        at 2010,1000  center rotate by 40 textcolor rgb "#00D317"
set label "GTX 580"        at 2011,1000  center rotate by 40 textcolor rgb "#00D317"
set label "GTX 680"        at 2012,2000  center rotate by 40 textcolor rgb "#00D317"
set label "GTX Titan"      at 2013,7000  center rotate by 40 textcolor rgb "#00D317"
set label "Tesla K40"      at 2014,8000  center rotate by 40 textcolor rgb "#00D317"
set label "GTX Titan X"    at 2015,9000  center rotate by 40 textcolor rgb "#00D317"
set label "Titan X"        at 2016,17000 center rotate by 40 textcolor rgb "#00D317"
set label "Titan V"        at 2017,20000 center rotate by 40 textcolor rgb "#00D317"
set label "Titan RTX"      at 2018,22000 center rotate by 40 textcolor rgb "#00D317"

# Labels Xeon Phi
set label "Xeon Phi 7120 (KNC)" at 2014,1900 center rotate by 00
set label "Xeon Phi 7290 (KNL)" at 2016,5000 center rotate by 48


plot 'data-intel.txt'     using 1:2 with linesp pt 9 ps 3.0 title "INTEL Xeon CPUs", \
     'data-sp-nvidia.txt' using 1:2 with linesp pt 5 ps 3.0 title "NVIDIA GeForce GPUs", \
     'data-amd.txt'       using 1:2 with linesp pt 7 ps 3.0 title "AMD Radeon GPUs", \
     'data-intel-phi.txt' using 1:2 with linesp pt 11 ps 3.0 title "INTEL Xeon Phis"

set yrange [30:10000]
set output "gflops-dp.eps"
set title "Theoretical Peak Performance, Double Precision"


unset label

# Labels AMD
set label "HD 3870"         at 2007,900  center rotate by 40 textcolor rgb "#971c00"
set label "HD 4870"         at 2008,1100  center rotate by 40 textcolor rgb "#971c00"
set label "HD 5870"         at 2009,1400 center rotate by 40 textcolor rgb "#971c00"
set label "HD 6970"         at 2010,1600 center rotate by 40 textcolor rgb "#971c00"
set label "HD 6970"         at 2011,1600 center rotate by 40 textcolor rgb "#971c00"
set label "HD 7970 GHz Ed." at 2012,2200 center rotate by 40 textcolor rgb "#971c00"
set label "HD 8970"         at 2013,2400 center rotate by 40 textcolor rgb "#971c00"
set label "FirePro W9100"   at 2014,3600 center rotate by 40 textcolor rgb "#971c00"
set label "FirePro S9150"   at 2015,3600 center rotate by 40 textcolor rgb "#971c00"
set label "MI25"            at 2016,5700 center rotate by 40 textcolor rgb "#971c00"
set label "MI60"            at 2018,8300 center rotate by 40 textcolor rgb "#971c00"

# Labels Intel
set label "X5482"         at 2007,500  center rotate by 40 textcolor rgb "#005197"
set label "X5492"         at 2008,700  center rotate by 40 textcolor rgb "#005197"
set label "W5590"         at 2009,1000  center rotate by 40 textcolor rgb "#005197"
set label "X5680"         at 2010,1200  center rotate by 40 textcolor rgb "#005197"
set label "X5690"         at 2011,1200  center rotate by 40 textcolor rgb "#005197"
set label "E5-2690"       at 2012,1800 center rotate by 40 textcolor rgb "#005197"
set label "E5-2697 v2"    at 2013,2000 center rotate by 40 textcolor rgb "#005197"
set label "E5-2699 v3"    at 2014,3200 center rotate by 40 textcolor rgb "#005197"
set label "E5-2699 v3"    at 2015,3200 center rotate by 40 textcolor rgb "#005197"
set label "E5-2699 v4"    at 2016,5300 center rotate by 40 textcolor rgb "#005197"
set label "Platinum 8180" at 2017,8400 center rotate by 40 textcolor rgb "#005197"
set label "Platinum 9282" at 2018,7900 center rotate by 40 textcolor rgb "#005197"

# Labels NVIDIA
set label "Tesla C1060"  at 2008,1500 center rotate by 40 textcolor rgb "#00D317"
set label "Tesla C1060"  at 2009,1800 center rotate by 40 textcolor rgb "#00D317"
set label "Tesla C2050"  at 2010,2000 center rotate by 40 textcolor rgb "#00D317"
set label "Tesla M2090"  at 2011,2000 center rotate by 40 textcolor rgb "#00D317"
set label "Tesla K20"    at 2012,2600 center rotate by 40 textcolor rgb "#00D317"
set label "Tesla K20X"   at 2013,3200 center rotate by 40 textcolor rgb "#00D317"
set label "Tesla K40"    at 2014,4400 center rotate by 40 textcolor rgb "#00D317"
set label "Tesla K40"    at 2015,4400 center rotate by 40 textcolor rgb "#00D317"
set label "Tesla P100"   at 2016,6500 center rotate by 40 textcolor rgb "#00D317"
set label "Tesla V100"   at 2017,8800 center rotate by 40 textcolor rgb "#00D317"

# Labels Xeon Phi
set label "Xeon Phi 7120" at 2013,2800 center rotate by 40
set label "Xeon Phi 7120" at 2014,4000 center rotate by 40
set label "Xeon Phi 7120" at 2015,4000 center rotate by 40
set label "Xeon Phi 7290" at 2016,6100 center rotate by 40



plot 'data-intel.txt'     using 1:3 with linesp pt  9 ps 3.0 title "INTEL Xeon CPUs", \
     'data-dp-nvidia.txt' using 1:2 with linesp pt  5 ps 3.0 title "NVIDIA Tesla GPUs", \
     'data-amd.txt'       using 1:3 with linesp pt  7 ps 3.0 title "AMD Radeon GPUs", \
     'data-intel-phi.txt' using 1:3 with linesp pt 11 ps 3.0 title "INTEL Xeon Phis"
