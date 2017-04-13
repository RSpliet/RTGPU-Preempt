#!/usr/bin/gnuplot
set terminal unknown
plot "GT710_3840x2160_bin32.txt" using 1:2;
set xrange [GPVAL_DATA_X_MIN/1000:GPVAL_DATA_X_MAX/1000]
set yrange [99.5:100.005]

set style fill solid;
set encoding utf8; 
set xlabel "Context switch time (μs)";
set ylabel "Fraction of samples (%)";
set format y "%3.1f";
set terminal postscript eps enhanced colour dashed 'Helvetica' 14 size 7cm,4cm
set output 'plot_cmlt.eps'
set x2tics offset -2.75,2.1 rotate by -60 ("Max 1" 73.28, "Max 2" 80.16, "Max 3" 126.88)
set grid noxtics x2tics lw 1.5 # lc rgb "#ff0000"
set ylabel offset 1.0
set lmargin at screen 0.19
set rmargin at screen 0.99
set key right bottom Left width -6 samplen 0.5 nobox

set style line 1 linetype 1 dashtype 1 linecolor rgb "#332288" linewidth 2.2 pointtype 1
set style line 2 linetype 2 dashtype 2 linecolor rgb "#66AACC" linewidth 2.2 pointtype 2
set style line 3 linetype 3 dashtype 3 linecolor rgb "#117733" linewidth 2.2 pointtype 3
set style line 4 linetype 4 dashtype 4 linecolor rgb "#DDCC77" linewidth 2.2 pointtype 4
set style line 5 linetype 5 dashtype 5 linecolor rgb "#CC6677" linewidth 2.2 pointtype 5
set style line 6 linetype 7 dashtype 6 linecolor rgb "#AA4499" linewidth 2.2 pointtype 7
set style line 7 linetype 7 dashtype 7 linecolor rgb "#44AA99" linewidth 2.2 pointtype 7
set style line 8 linetype 7 dashtype 8 linecolor rgb "#882255" linewidth 2.2 pointtype 7

#set grid ytics lt 0 lw 1 lc rgb "#bbbbbb"

plot "GT710_1024x768_bin32.txt" using ($1/1000):($2/200000) ls 1 title "1: 1024x768 60Hz (180MiB/s)" with lines, \
"GT710_1600x1200_bin32.txt" using ($1/1000):($2/200000) ls 2 title "2: 1600x1200 60Hz (439.5MiB/s)" with lines, \
"GT710_3840x2160_bin32.txt" using ($1/1000):($2/200000) ls 3 title "3: 3840x2160 30Hz (949.2MiB/s)" with lines;
