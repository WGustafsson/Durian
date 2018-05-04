set terminal canvas jsdir ""
set output "/home/wigu2376/Durian/analyses/assembly/assembly_evaluation/output/post_correction/contigs_reports/nucmer_output/corrected_assembly.html"
set ytics ( \
 "0" 0, \
 "4000000" 4000000, \
 "8000000" 8000000, \
 "12000000" 12000000, \
 "16000000" 16000000, \
 "20000000" 20000000, \
 "24000000" 24000000, \
 "" 27925150 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:*]
set yrange [1:27925150]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/wigu2376/Durian/analyses/assembly/assembly_evaluation/output/post_correction/contigs_reports/nucmer_output/corrected_assembly.fplot" title "FWD" w lp ls 1, \
 "/home/wigu2376/Durian/analyses/assembly/assembly_evaluation/output/post_correction/contigs_reports/nucmer_output/corrected_assembly.rplot" title "REV" w lp ls 2
