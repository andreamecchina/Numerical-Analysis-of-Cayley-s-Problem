reset session
set terminal png
set output '1.png'
unset key
unset colorbox
unset tics
set lmargin 0
set rmargin 0
set tmargin 0
set bmargin 0
set palette negative defined (\
    0 '#D53E4F',\
    1 '#F46D43',\
    2 '#FDAE61',\
    3 '#FEE08B',\
    4 '#E6F598',\
    5 '#ABDDA4',\
    6 '#66C2A5',\
    7 '#3288BD' )
set object circle at 1,0 radius .02\
    fillcolor rgb 'black' fillstyle solid front
set object circle at cos(2*pi/3),sin(2*pi/3) radius .02\
    fillcolor rgb 'black' fillstyle solid front
set object circle at cos(4*pi/3),sin(4*pi/3) radius .02\
   fillcolor rgb 'black' fillstyle solid front 
plot 'output.dat' using 1:2:(arg($3+$4*{0,1})) palette
