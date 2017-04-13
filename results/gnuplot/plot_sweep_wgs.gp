#!/usr/bin/gnuplot
set style fill solid;
set xlabel "Workgroups/SM";
set ylabel "Utilisation" offset 1
set xrange [2:30]
set yrange [0:1]
set tmargin at screen 0.96
#set format y "%7.0f";
set terminal postscript eps enhanced colour dashed 'Helvetica' 14 size 7cm,3.1cm
set output 'plot_eval_wgs_90.eps'
set key right bottom nobox

set style line 1 linetype 1 dashtype 1 linecolor rgb "#332288" linewidth 2.2 pointtype 1
set style line 2 linetype 2 dashtype 2 linecolor rgb "#66AACC" linewidth 2.2 pointtype 2
set style line 3 linetype 3 dashtype 3 linecolor rgb "#117733" linewidth 2.2 pointtype 3
set style line 4 linetype 4 dashtype 4 linecolor rgb "#DDCC77" linewidth 2.2 pointtype 4
set style line 5 linetype 5 dashtype 5 linecolor rgb "#CC6677" linewidth 2.2 pointtype 5
set style line 6 linetype 7 dashtype 6 linecolor rgb "#AA4499" linewidth 2.2 pointtype 7
set style line 7 linetype 7 dashtype 7 linecolor rgb "#44AA99" linewidth 2.2 pointtype 7
set style line 8 linetype 7 dashtype 8 linecolor rgb "#882255" linewidth 2.2 pointtype 7

set xtics (2, 5, 10, 15, 20, 25, 30)

set grid ytics lt 0 lw 1 lc rgb "#bbbbbb"
set grid xtics lt 0 lw 1 lc rgb "#bbbbbb"

set lmargin at screen 0.15
set rmargin at screen 0.97

plot "sched_lp_sweep_wgs.txt" using 1:2 ls 1 title "No overhead" with lines, \
"sched_lp_sweep_wgs.txt" using 1:4 ls 2 title "Avg overhead" with lines, \
"sched_lp_sweep_wgs.txt" using 1:6 ls 3 title "Max overhead" with lines;

set output 'plot_eval_wgs_99.eps'
set key right bottom nobox

plot "sched_lp_sweep_wgs.txt" using 1:3 ls 1 title "No overhead" with lines, \
"sched_lp_sweep_wgs.txt" using 1:5 ls 2 title "Avg overhead" with lines, \
"sched_lp_sweep_wgs.txt" using 1:7 ls 3 title "Max overhead" with lines;
