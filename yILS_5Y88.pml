###################################################################################################################################
# PyMOL script for making yeast (cerevisiae) ILS complex session, using deposited coordinates from Shi lab (Wan et al. Cell 2017) #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB ###################################################


fetch 5Y88, yILS, async=0


# set scene #
bg_color white
set ray_shadows, 0
set orthoscopic, off
set ignore_case, 0

# cartoon rendering #
hide
show cartoon
set cartoon_cylindrical_helices, 1
set cartoon_ring_finder, 3
set cartoon_ring_mode, 3
set cartoon_tube_radius, 1.2
#set cartoon_discrete_colors, 1
#set cartoon_smooth_loops=off
set cartoon_loop_radius, 0.5



# colours #
set_color lightgreen, [144, 238, 144]
set_color darkgreen, [0, 100, 0]
set_color darkseagreen, [143, 188, 143]
set_color greenyellow, [173, 255, 47]
set_color coral, [255, 127, 80]
set_color darkorange, [255, 140, 0]
set_color gold, [255, 215, 0]
set_color lemonchiffon, [255,250,205]
set_color moccasin, [255,228,181]
set_color lightyellow, [255,255,224]
set_color skyblue, [135,206,235]
set_color powderblue, [176,224,230]
set_color royalblue, [65,105,225]
set_color cornflowerblue, [100,149,237]
set_color steelblue, [70,130,180]
set_color lightsteelblue, [176,196,222]
set_color lightcoral, [240,128,128]
set_color peachpuff, [255,218,185]
set_color crimson, [220,20,60]
set_color indianred, [205,92,92]
set_color lavender, [230,230,250]
set_color thistle, [216,191,216]
set_color orchid, [218,112,214]
set_color palevioletred, [219,112,147]
set_color mediumvioletred, [199,21,133]
set_color lavenderblush, [255,240,245]
set_color mistyrose, [255,228,225]
set_color rosybrown, [188,143,143]
set_color mediumpurple, [147,112,219]



# chain colors #

# snRNA #
select yILS and chain F
extract yILS_U2_snRNA, sele
color forest, yILS_U2_snRNA

select yILS and chain B
extract yILS_U5_snRNA, sele
color deepblue, yILS_U5_snRNA

select yILS and chain D
extract yILS_U6_snRNA, sele
color firebrick, yILS_U6_snRNA

select yILS and chain E+x
extract yILS_Intron, sele
color black, yILS_Intron
color lightmagenta, yILS_Intron and resi 501 and not name P


# U5 #

select yILS and chain A
extract yILS_Prp8, sele
color lightblue, yILS_Prp8

select yILS and chain C
extract yILS_Snu114, sele
color cornflowerblue, yILS_Snu114

select yILS and (chain a or chain b or chain c or chain d or chain e or chain f or chain g)
extract yILS_U5_Sm_ring, sele
color bluewhite, yILS_U5_Sm_ring



# U2 #

select yILS and chain o
extract yILS_Lea1, sele
color lightgreen, yILS_Lea1

select yILS and chain p
extract yILS_Msl1, sele
color lightgreen, yILS_Msl1

select yILS and (chain h or chain i or chain j or chain k or chain l or chain m or chain n)
extract yILS_U2_Sm_ring, sele
color palegreen, yILS_U2_Sm_ring


# NTC/NTR #

select yILS and chain O
extract yILS_Prp46, sele
color lemonchiffon, yILS_Prp46

select yILS and chain Q
extract yILS_Prp45, sele
color lightorange, yILS_Prp45

select yILS and chain M
extract yILS_Ecm2, sele
color tv_yellow, yILS_Ecm2

select yILS and chain N
extract yILS_Cwc2, sele
color peachpuff, yILS_Cwc2

select yILS and chain P
extract yILS_Cwc15, sele
color wheat, yILS_Cwc15

select yILS and chain L
extract yILS_Bud31, sele
color lightyellow, yILS_Bud31

select yILS and chain J
extract yILS_Cef1, sele
color brightorange, yILS_Cef1

select yILS and chain I
extract yILS_Clf1, sele
color moccasin, yILS_Clf1

select yILS and chain K
extract yILS_Syf2, sele
color brightorange, yILS_Syf2

select yILS and (chain q or chain r or chain s or chain t)
extract yILS_Prp19, sele
color brightorange, yILS_Prp19

select yILS and chain G
extract yILS_Snt309, sele
color brightorange, yILS_Snt309

select yILS and chain H
extract yILS_Syf1, sele
color lightorange, yILS_Syf1


# specific proteins #

select yILS and chain W
extract yILS_Prp43, sele
color raspberry, yILS_Prp43

select yILS and chain R
extract yILS_Yju2, sele
color pink, yILS_Yju2

select yILS and chain S
extract yILS_Prp17, sele
color violetpurple, yILS_Prp17

select yILS and chain T
extract yILS_Cwc23, sele
color hotpink, yILS_Cwc23

select yILS and chain U
extract yILS_Spp382, sele
color deeppurple, yILS_Spp382

select yILS and chain V
extract yILS_Ntr2, sele
color violetpurple, yILS_Ntr2


# show metals #
sel name ZN
show spheres, sel
color yellow, sel

sel name MG
show spheres, sel
color purple, sel

show sticks, resn IHP+I6P+GTP
util.cnc resn IHP+I6P+GTP



delete yILS
group yILS, yILS_*

set_view (\
    -0.313406497,   -0.080684997,   -0.946182191,\
    -0.762560189,   -0.572412431,    0.301396191,\
    -0.565925658,    0.815979242,    0.117875740,\
     0.002921492,   -0.002171963, -995.038879395,\
   268.138580322,  267.855926514,  260.075225830,\
   632.177001953, 1357.907104492,  -20.000000000 )


