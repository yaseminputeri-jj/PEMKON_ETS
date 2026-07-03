set terminal pngcairo size 1000,700 enhanced font 'Verdana,10'
set output 'Hasil_Simulasi_Aktuator.png'

set lmargin 12
set rmargin 8
set tmargin 3
set bmargin 3

set multiplot layout 2,1 title "Grafik Monitoring Sensor - Real-Time Plant" font 'Verdana,14 Bold'

# ---------- GRAFIK 1: MONITORING SUHU ----------
set title "Karakteristik Perubahan Suhu (LM35)" font 'Verdana,11 Bold'
set xlabel "Waktu (Data ke-)"
set ylabel "Suhu ({/Symbol \260}C)"
set grid xtics ytics linecolor rgb "#E0E0E0" linewidth 0.5

set xr [1:15]
set yr [26.8:29.2]
set ytics 0.4
set key top left

plot 'data.txt' using 1:2 with linespoints linewidth 2 linecolor rgb "#FF0000" title "Suhu ({/Symbol \260}C)"

# ---------- GRAFIK 2: MONITORING TEGANGAN ----------
set title "Karakteristik Tegangan Input (Potensio)" font 'Verdana,11 Bold'
set xlabel "Waktu (Data ke-)"
set ylabel "Tegangan (Volt)"
set grid xtics ytics linecolor rgb "#E0E0E0" linewidth 0.5

set xr [1:15]
set yr [0.0:5.5]
set ytics 1.0
set key top left

plot 'data.txt' using 1:3 with linespoints linewidth 2 linecolor rgb "#0000FF" title "Tegangan (V)"

unset multiplot