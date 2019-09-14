###############################################################################################################################
# PyMOL script for making human P complex session, using deposited coordinates from Nagai lab (Fica et al. Science 2019)      #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB ###############################################

fetch 6QDV, hP, async=0


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
select hP and chain 2
extract hP_U2_snRNA, sele
color forest, hP_U2_snRNA

select hP and chain 5
extract hP_U5_snRNA, sele
color deepblue, hP_U5_snRNA

select hP and chain 6
extract hP_U6_snRNA, sele
color firebrick, hP_U6_snRNA

select hP and chain I
extract hP_Intron, sele
color black, hP_Intron
color lightmagenta, hP_Intron and resi 144 and not name P

select hP and chain E
extract hP_Exon, sele
color brightorange, hP_Exon


# U5 #

select hP and chain A
extract hP_Prp8, sele
color lightblue, hP_Prp8

select hP and chain B
extract hP_Brr2, sele
color lightsteelblue, hP_Brr2

select hP and chain C
extract hP_Snu114, sele
color cornflowerblue, hP_Snu114

select hP and (chain b or chain d or chain h or chain j or chain f or chain e or chain g)
extract hP_U5_Sm_ring, sele
color bluewhite, hP_U5_Sm_ring

select hP and chain N
extract hP_U5_40K, sele
color lightsteelblue, hP_U5_40K

# U2 #

select hP and (chain k or chain n or chain l or chain m or chain q or chain p or chain r)
extract hP_U2_Sm_ring, sele
color palegreen, hP_U2_Sm_ring

select hP and chain W
extract hP_U2A, sele
color lightgreen, hP_U2A

select hP and chain Y
extract hP_U2B, sele
color lightgreen, hP_U2B


# NTC/NTR #

select hP and chain J
extract hP_Prp46, sele
color lemonchiffon, hP_Prp46

select hP and chain K
extract hP_Prp45, sele
color lightorange, hP_Prp45

select hP and chain M
extract hP_RBM22, sele
color peachpuff, hP_RBM22

select hP and chain P
extract hP_Cwc15, sele
color wheat, hP_Cwc15

select hP and chain L
extract hP_Bud31, sele
color lightyellow, hP_Bud31

select hP and chain O
extract hP_Cef1, sele
color brightorange, hP_Cef1

select hP and chain S
extract hP_Clf1, sele
color moccasin, hP_Clf1

select hP and (chain t or chain u or chain v or chain w)
extract hP_Prp19, sele
color brightorange, hP_Prp19

select hP and chain s
extract hP_Snt309, sele
color brightorange, hP_Snt309

select hP and chain T
extract hP_Syf1, sele
color lightorange, hP_Syf1

select hP and chain U
extract hP_AQR, sele
color raspberry, hP_AQR

select hP and chain y
extract hP_Syf2, sele
color brightorange, hP_Syf2


# factors

select hP and chain R
extract hP_Cwc21, sele
color violet, hP_Cwc21

select hP and chain H
extract hP_Cwc22, sele
color mediumpurple, hP_Cwc22

select hP and chain o
extract hP_Prp17, sele
color violetpurple, hP_Prp17

select hP and chain i
extract hP_PPIL1, sele
color firebrick, hP_PPIL1

# C* specific proteins #

select hP and chain D
extract hP_PRKRIP1, sele
color thistle, hP_PRKRIP1

select hP and chain F
extract hP_Cactin, sele
color lightpink, hP_Cactin

select hP and chain G
extract hP_FAM32A, sele
color hotpink, hP_FAM32A

select hP and chain V
extract hP_Prp22, sele
color palevioletred, hP_Prp22

select hP and chain c
extract hP_Slu7, sele
color deeppurple, hP_Slu7

select hP and chain z
extract hP_Sde2, sele
color mediumpurple, hP_Sde2

select hP and chain Z
extract hP_NKAP, sele
color violetpurple, hP_NKAP

# EJC

select hP and chain 7
extract hP_eIF4A3, sele
color indianred, hP_eIF4A3

select hP and chain 9
extract hP_Magoh, sele
color lavenderblush, hP_Magoh

select hP and chain 8
extract hP_RBM8A, sele
color raspberry, hP_RBM8A

delete hP
group hP, hP_*


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
     0.313493252,   -0.784663737,    0.534792364,\
    -0.556414306,    0.304570466,    0.773055613,\
    -0.769483328,   -0.539925218,   -0.341118515,\
     0.001987308,   -0.000290275, -1047.527465820,\
   272.631042480,  261.749755859,  219.237182617,\
   881.405761719, 1213.239379883,  -20.000000000 )


