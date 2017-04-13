#!/usr/bin/gnuplot
set terminal unknown
plot "GT710_1600x1200_bin256.txt" using 1:2;
set xrange [GPVAL_DATA_X_MIN/1000:GPVAL_DATA_X_MAX/1000]
set yrange [1:10000000]

set style fill solid;
set boxwidth 0.256;
set logscale y;
set encoding utf8;
set xlabel "Context switch time (μs)";
set ylabel "# Samples";
set ytics ("1" 1, "10" 10, "100" 100, "1K" 1000, "10K" 10000, "100K" 100000, "1M" 1000000, "10M" 10000000)
set format y "%7.0f";
set terminal postscript eps enhanced colour dashed 'Helvetica' 14 size 6.8cm,4cm
set output 'hist_gt710.eps'
set key off
set tmargin at screen 0.805
set rmargin at screen 0.97
set lmargin at screen 0.175
set x2tics offset -5.3 ("<- 99.7%% ->" 23.648)
set grid front noxtics x2tics lw 2
plot "GT710_1600x1200_bin256.txt" using ($1/1000.0):2 lc "#a0a0a0" title "GeForce GT 710" with boxes;

