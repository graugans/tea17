set xdata time
set timefmt "%Y-%m-%d"
set format x "%m/%Y"
set grid

set yrange [0:110]
set xlabel "Date"
set ylabel "Price [Euro]"
set terminal  png size 1024, 768 crop
set output "result_output.png"
plot 'result.txt' using 1:2 with linespoints title "Brent crude oil 1-month Forward - fob (free on board) per barrel",\
     'result.txt' using 1:3 with linespoints title "alpha = 0.0",\
     'result.txt' using 1:4 with linespoints title "aplha = 0.3",\
     'result.txt' using 1:5 with linespoints title "alpha = 0.5",\
     'result.txt' using 1:6 with linespoints title "alpha = 0.7"

set output "result_alpha_00.png"
plot 'result.txt' using 1:3 with linespoints title "alpha = 0.0"

set output "result_alpha_03.png"
plot 'result.txt' using 1:4 with linespoints title "alpha = 0.3"

set output "result_alpha_05.png"
plot 'result.txt' using 1:5 with linespoints title "alpha = 0.5"

set output "result_alpha_07.png"
plot 'result.txt' using 1:6 with linespoints title "alpha = 0.7"

set output "result_alpha_10.png"
plot 'result.txt' using 1:7 with linespoints title "alpha = 1.0"


