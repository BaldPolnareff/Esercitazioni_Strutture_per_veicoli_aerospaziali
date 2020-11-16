reset
set terminal windows enhanced 
set size 1,1
set key t r
set notitle

set yrange [0:3.5]
set xrange [0:0.45]

set xlabel 't (s)'
set ylabel '{/Symbol D}p (kPa)'

set grid

plot 'p.dat' using 1:($3-$2) with l lw 3 lt 1 t ''

set term postscript colour enhanced "Helvetica, 18" 

set output "Dp.eps"
replot
 





