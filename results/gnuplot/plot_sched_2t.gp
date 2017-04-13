#!/usr/bin/gnuplot
set xrange [0.2:0.99]

set xlabel "Utilisation";
set ylabel "Schedulability (\%)";
set terminal postscript eps enhanced color 'Helvetica' 15 size 14cm,3.75cm
set output 'plot_sched_lp_2t.eps'
set tmargin at screen 0.97
set key bottom left width -4;

set style line 1 linetype 1 dashtype 1 linecolor rgb "#332288" linewidth 2.2 pointtype 1
set style line 2 linetype 2 dashtype 2 linecolor rgb "#66AACC" linewidth 2.2 pointtype 2
set style line 3 linetype 3 dashtype 3 linecolor rgb "#117733" linewidth 2.2 pointtype 3
set style line 4 linetype 4 dashtype 4 linecolor rgb "#DDCC77" linewidth 2.2 pointtype 4
set style line 5 linetype 5 dashtype 5 linecolor rgb "#CC6677" linewidth 2.2 pointtype 5
set style line 6 linetype 7 dashtype 6 linecolor rgb "#AA4499" linewidth 2.2 pointtype 7
set style line 7 linetype 7 dashtype 7 linecolor rgb "#44AA99" linewidth 2.2 pointtype 7
set style line 8 linetype 7 dashtype 8 linecolor rgb "#882255" linewidth 2.2 pointtype 7

set grid ytics lt 0 lw 1 lc rgb "#bbbbbb"
set grid xtics lt 0 lw 1 lc rgb "#bbbbbb"

plot "sched_2t.txt" using 1:($3/1000) ls 1 title "Preemptive (avg)" with lines,\
"sched_2t.txt" using 1:($4/1000) ls 2 title "Preemptive (max)" with lines,\
"sched_2t.txt" using 1:($6/1000) ls 3 title "Limited Preemptive (avg)" with lines,\
"sched_2t.txt" using 1:($7/1000) ls 4 title "Limited Preemptive (max)" with lines,\
"sched_2t.txt" using 1:($9/1000) ls 5 title "Non-preemptive (avg)" with lines,\
"sched_2t.txt" using 1:($10/1000) ls 6 title "Non-preemptive (max)" with lines;
