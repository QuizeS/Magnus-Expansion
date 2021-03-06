#!/bin/gnuplot
set terminal pdfcairo enhanced font "DejaVuSerif"
set output "output.pdf"
set logscale x
set xlabel 'Энергия нейтрино, МэВ'
set ylabel 'Вероятность выживания нейтрино'
unset key
set mytics
set grid xtics ytics mytics
set grid back ls 6

#set ytics (0.1,0.2,0.3,0.4,0.5,0.6,0.7)
#set xtics (0.1,1,10,100,1000,10000,100000,1000000)
set format x "10^{%L}"
set lmargin 10
plot 'results.dat' u 5:1 w p lt 9 pt 13 ps 0.5
