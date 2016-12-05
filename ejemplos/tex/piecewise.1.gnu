# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
# set output 'piecewise.1.png'
set bar 1.000000 front
unset border
set style circle radius graph 0.02, first 0.00000, 0.00000 
set style ellipse size graph 0.05, 0.03, first 0.00000 angle 0 units xy
set key inside center top vertical Left reverse enhanced autotitle nobox
set style textbox transparent margins  1.0,  1.0 border
unset logscale
set style data lines
set xzeroaxis
set yzeroaxis
set xtics axis out scale 1,8 mirror norotate  autojustify
set xtics add  (1.00000 1, 6.28319 1)
set ytics axis in scale 1,0.5 mirror norotate  autojustify
unset paxis 1 tics
unset paxis 2 tics
unset paxis 3 tics
unset paxis 4 tics
unset paxis 5 tics
unset paxis 6 tics
unset paxis 7 tics
set title "Piecewise function sampling" 
set title  font ",15" norotate
set xrange [ -2.00000 : 10.0000 ] noreverse nowriteback
set paxis 1 range [ * : * ] noreverse nowriteback
set paxis 2 range [ * : * ] noreverse nowriteback
set paxis 3 range [ * : * ] noreverse nowriteback
set paxis 4 range [ * : * ] noreverse nowriteback
set paxis 5 range [ * : * ] noreverse nowriteback
set paxis 6 range [ * : * ] noreverse nowriteback
set paxis 7 range [ * : * ] noreverse nowriteback
set colorbox vertical origin screen 0.9, 0.2, 0 size screen 0.05, 0.6, 0 front  noinvert bdefault
plot sample [*:1] x, [1:2.*pi] cos(x), [2.*pi:10] (x-8)**2
