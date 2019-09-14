##########################################################################################################################
# PyMOL script for making yeast Bact complex session, using deposited coordinates from Shi lab (Yan et al. Science 2016) #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB ##########################################

fetch 5GM6, yBact, async=0


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
select yBact and chain L
extract yBact_U2_snRNA, sele
color forest, yBact_U2_snRNA

select yBact and chain D
extract yBact_U5_snRNA, sele
color deepblue, yBact_U5_snRNA

select yBact and chain E
extract yBact_U6_snRNA, sele
color firebrick, yBact_U6_snRNA

select yBact and chain M+N
extract yBact_Intron, sele
color black, yBact_Intron
color brightorange, yBact_Intron and resi 1-99
color lightmagenta, yBact_Intron and resi 501 and not name P

# U5 #

select yBact and chain A
extract yBact_Prp8, sele
color lightblue, yBact_Prp8

select yBact and chain B
extract yBact_Brr2, sele
color lightsteelblue, yBact_Brr2

select yBact and chain C
extract yBact_Snu114, sele
color cornflowerblue, yBact_Snu114

select yBact and (chain k or chain i or chain h or chain j or chain l or chain m or chain g)
extract yBact_U5_Sm_ring, sele
color bluewhite, yBact_U5_Sm_ring


# U2 #

select yBact and chain F
extract yBact_Rse1, sele
color forest, yBact_Rse1

select yBact and chain G
extract yBact_Hsh155, sele
color lightgreen, yBact_Hsh155

select yBact and chain H
extract yBact_Cus1, sele
color darkgreen, yBact_Cus1

select yBact and chain I
extract yBact_Prp11, sele
color bluewhite, yBact_Prp11

select yBact and chain J
extract yBact_Rds3, sele
color limegreen, yBact_Rds3

select yBact and chain K
extract yBact_Ysf3, sele
color tv_green, yBact_Ysf3

select yBact and chain e
extract yBact_Hsh49, sele
color limon, yBact_Hsh49


# RES #

select yBact and chain U
extract yBact_Pml1, sele
color pink, yBact_Pml1

select yBact and chain V
extract yBact_Ist3, sele
color pink, yBact_Ist3

select yBact and chain W
extract yBact_Cwc26, sele
color pink, yBact_Cwc26



# NTC/NTR #

select yBact and chain O
extract yBact_Prp46, sele
color lemonchiffon, yBact_Prp46

select yBact and chain P
extract yBact_Prp45, sele
color lightorange, yBact_Prp45

select yBact and chain Q
extract yBact_Ecm2, sele
color tv_yellow, yBact_Ecm2

select yBact and chain R
extract yBact_Cwc2, sele
color peachpuff, yBact_Cwc2

select yBact and chain S
extract yBact_Cwc15, sele
color wheat, yBact_Cwc15

select yBact and chain T
extract yBact_Bud31, sele
color lightyellow, yBact_Bud31

select yBact and chain c
extract yBact_Cef1, sele
color brightorange, yBact_Cef1

select yBact and chain d
extract yBact_Clf1, sele
color moccasin, yBact_Clf1

select yBact and chain f
extract yBact_Syf2, sele
color brightorange, yBact_Syf2

select yBact and (chain o or chain p or chain q or chain r)
extract yBact_Prp19, sele
color brightorange, yBact_Prp19

select yBact and chain t
extract yBact_Snt309, sele
color brightorange, yBact_Snt309

select yBact and chain v
extract yBact_Syf1, sele
color lightorange, yBact_Syf1



# Bact specific proteins #


select yBact and chain X
extract yBact_Cwc21, sele
color violet, yBact_Cwc21

select yBact and chain Y
extract yBact_Prp2, sele
color raspberry, yBact_Prp2

select yBact and chain Z
extract yBact_Cwc22, sele
color mediumpurple, yBact_Cwc22

select yBact and chain a
extract yBact_Cwc24, sele
color hotpink, yBact_Cwc24

select yBact and chain b
extract yBact_Cwc27, sele
color deeppurple, yBact_Cwc27

select yBact and chain n
extract yBact_Prp17, sele
color violetpurple, yBact_Prp17



delete yBact
group yBact, yBact_*

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
     0.713200688,    0.217390507,   -0.666397154,\
    -0.528222919,   -0.458269387,   -0.714819193,\
    -0.460783988,    0.861818075,   -0.212007388,\
     0.000710815,    0.000139147, -1040.444335938,\
   264.568023682,  273.898712158,  271.134277344,\
   804.672668457, 1276.239990234,  -20.000000000 )


