set terminal png
set output '2.png'
reset session
unset key 
unset colorbox
unset tics
set lmargin 0
set rmargin 0
set tmargin 0
set bmargin 0
#set palette model RGB defined (0 "light-green",1 "dark-green", 2 "dark-green")
set palette negative defined ( \
    0 '#D53E4F',\
    1 '#F46D43',\
    2 '#FDAE61',\
    3 '#FEE08B',\
    4 '#E6F598',\
    5 '#ABDDA4',\
    6 '#66C2A5',\
    7 '#3288BD' )
set object circle at 1,0 radius .02 fillcolor rgb 'black' fillstyle solid front
set object circle at -.5,.8660 radius .02 fillcolor rgb 'black' fillstyle solid front
set object circle at -.5,-.8660 radius .02 fillcolor rgb 'black' fillstyle solid front
plot 'output.dat' using 1:2:5 palette