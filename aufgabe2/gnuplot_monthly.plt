set xdata time
set timefmt "%Y-%m-%d"
set format x "%m/%Y"
set grid
plot 'monthly.data' using 1:2 with linespoints title "Durchschnittlicher Monatspreis in Euro"
