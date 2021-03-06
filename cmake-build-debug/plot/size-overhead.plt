set term pdfcairo lw 2 font "Arial,18"
set output "size-overhead.pdf"

set xlabel "Size[MB]" font "Arial,20"
set ylabel "Checkpoint overhead[s]" font "Arial,20"
set xtics ("1000" 250000,"2000" 500000,"4000" 1000000,"8000" 2000000)
# set ytics ("40" 40,"80" 80,"160" 160,"320" 320,"640" 640,"1280" 1280)
set logscale x
set key center top
# unset key
set grid lw 2
set key maxcols 3
set key maxrows 2
set key samplen 3
plot [250000:2000000][] \
"size-overhead.txt" using 1:($2/1000000000) title "NS" with linespoints linecolor 7 linewidth 2 pointtype 13 pointsize 1.5,\
"size-overhead.txt" using 1:($3/1000000000) title "COU" with linespoints linecolor 8 linewidth 2 pointtype 14 pointsize 1.5,\
"size-overhead.txt" using 1:($4/1000000000) title "ZZ" with linespoints linecolor 9 linewidth 2 pointtype 7 pointsize 1.2,\
"size-overhead.txt" using 1:($5/1000000000) title "PP" with linespoints linecolor 10 linewidth 2 pointtype 16 pointsize 1.5,\
"size-overhead.txt" using 1:($6/1000000000) title "PB" with linespoints linecolor 11 linewidth 2 pointtype 17 pointsize 1.5,\
"size-overhead.txt" using 1:($7/1000000000) title "HG" with linespoints linecolor 12 linewidth 2 pointtype 11 pointsize 1.5,\
"size-overhead.txt" using 1:($8/1000000000) title "Fork" with linespoints linecolor 13 linewidth 2 pointtype 13 pointsize 1.5