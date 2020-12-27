reset
set terminal epscairo 
set size 1,1
set key t r
set notitle

#set yrange [-.005:.035]
set xrange [0:225]

set xlabel 't (s)'
set ylabel 'p (kPa)'

#set pointsize 0.8

set grid

plot 'p.dat' using 1:2 with l lw 3 lt 1 t 'Shell' ,\
     'p.dat' every 300 using 1:3 with p pt 4 lw 3 lt 2 t 'Satellite'

set term postscript colour enhanced "Helvetica, 18" 

set output "p.eps"
replot
 






