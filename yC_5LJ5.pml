##########################################################################################################################
# PyMOL script for making yeast C complex session, using deposited coordinates from Nagai lab (Galej et al. Nature 2016) #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB ##########################################

fetch 5LJ5, yC, async=0

# set scene #
bg_color white
set ray_shadows, 0
#set orthoscopic, on
#set field_of_view, 1
set ignore_case, off

# cartoon rendering #
hide
show cartoon
set cartoon_cylindrical_helices, 1
set cartoon_ring_finder, 3
set cartoon_ring_mode, 3
set cartoon_tube_radius, 1.2
#set cartoon_discrete_colors, 1
set cartoon_smooth_loops=off
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
# some pinks:
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


# snRNA #
select yC and chain Z
extract yC_U2_snRNA, sele
color forest, yC_U2_snRNA

select yC and chain U
extract yC_U5_snRNA, sele
color deepblue, yC_U5_snRNA

select yC and chain V
extract yC_U6_snRNA, sele
color firebrick, yC_U6_snRNA

select yC and chain I
extract yC_Intron, sele
color black, yC_Intron
color lightmagenta, yC_Intron and resi 70 and not name P

select yC and chain E
extract yC_Exon, sele
color brightorange, yC_Exon

# U5 #

select yC and chain A
extract yC_Prp8, sele
color lightblue, yC_Prp8

select yC and chain B
extract yC_Brr2, sele
color lightsteelblue, yC_Brr2

select yC and chain C
extract yC_Snu114, sele
color cornflowerblue, yC_Snu114

select yC and (chain b or chain d or chain e or chain f or chain g or chain h or chain i or chain j)
extract yC_U5_Sm_ring, sele
color bluewhite, yC_U5_Sm_ring


# U2 #

select yC and chain W
extract yC_Lea1, sele
color lightgreen, yC_Lea1

select yC and chain Y
extract yC_Msl1, sele
color lightgreen, yC_Msl1

select yC and (chain k or chain l or chain m or chain n or chain p or chain q or chain r ) 
extract yC_U2_Sm_ring, sele
color palegreen, yC_U2_Sm_ring

# NTR #

select yC and chain J
extract yC_Prp46, sele
color lemonchiffon, yC_Prp46

select yC and chain K
extract yC_Prp45, sele
color lightorange, yC_Prp45

select yC and chain N
extract yC_Ecm2, sele
color tv_yellow, yC_Ecm2

select yC and chain M
extract yC_Cwc2, sele
color peachpuff, yC_Cwc2

select yC and chain P
extract yC_Cwc15, sele
color wheat, yC_Cwc15

select yC and chain L
extract yC_Bud31, sele
color lightyellow, yC_Bud31

#NTC

select yC and chain O
extract yC_Cef1, sele
color brightorange, yC_Cef1

select yC and chain S
extract yC_Clf1, sele
color moccasin, yC_Clf1

select yC and (chain t or chain u or chain v or chain w) 
extract yC_Prp19, sele
color brightorange, yC_Prp19

select yC and chain s
extract yC_Snt309, sele
color brightorange, yC_Snt309

select yC and chain T
extract yC_Syf1, sele
color lightorange, yC_Syf1



# C specific proteins #

select yC and chain R
extract yC_Cwc21, sele
color violet, yC_Cwc21

select yC and chain H
extract yC_Cwc22, sele
color violet, yC_Cwc22
color mediumpurple, yC_Cwc22


select yC and chain D
extract yC_Yju2, sele
color thistle, yC_Yju2


select yC and chain Q
extract yC_Prp16, sele
color palevioletred, yC_Prp16

select yC and chain G
extract yC_Isy1, sele
color orchid, yC_Isy1

select yC and chain F
extract yC_Cwc25, sele
color deeppurple, yC_Cwc25


select yC and chain x
extract yC_unknown, sele
color white, yC_unknown

delete yC
group yC, yC_*


# show metals #
sel name ZN
show spheres, sel
color yellow, sel


sel name MG
show spheres, sel
color purple, sel

show sticks, resn IHP+I6P+GTP
util.cnc resn IHP+I6P+GTP

set_view (\
     0.551057518,   -0.405480623,    0.729327500,\
    -0.291281223,   -0.912498593,   -0.287230730,\
     0.781976759,   -0.054157749,   -0.620948255,\
    -0.001310378,   -0.000188995, -1040.049438477,\
   279.774719238,  278.796203613,  292.295013428,\
   914.557800293, 1165.563476562,  -20.000000000 )

