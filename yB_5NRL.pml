################################################################################################################################
# PyMOL script for making yeast B complex session, using deposited coordinates from Nagai lab (Plaschka et al. Nature 2017)    #
######## PyMOL script by Clemens Plaschka and Pei-Chun Lin, Nagai lab, MRC LMB, adapted by Max Wilkinson #######################

fetch 5NRL, yB, async=0

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
select yB and chain 2
extract yB_U2_snRNA, sele
color forest, yB_U2_snRNA

select yB and chain 4
extract yB_U4_snRNA, sele
color paleyellow, yB_U4_snRNA

select yB and chain 5
extract yB_U5_snRNA, sele
color deepblue, yB_U5_snRNA

select yB and chain 6
extract yB_U6_snRNA, sele
color firebrick, yB_U6_snRNA

select yB and chain I
extract yB_Intron, sele
color black, yB_Intron
color lightmagenta, yB_Intron and resi 70 and not name P

select yB and chain A
extract yB_Prp8, sele
color lightblue, yB_Prp8

select yB and chain B
extract yB_Brr2, sele
#color palecyan, Brr2
color lightsteelblue, yB_Brr2

select yB and chain C
extract yB_Snu114, sele
color cornflowerblue, yB_Snu114

select yB and chain D
extract yB_Dib1, sele
color brightorange, yB_Dib1

select yB and chain E
extract yB_Snu66, sele
color violetpurple, yB_Snu66

select yB and chain F
extract yB_Prp31, sele
color yelloworange, yB_Prp31

select yB and chain G
extract yB_Prp3, sele
color tv_yellow, yB_Prp3

select yB and chain H
extract yB_Prp4, sele
color lightorange, yB_Prp4

select yB and chain J
extract yB_Prp6, sele
color lemonchiffon, yB_Prp6

select yB and chain K
extract yB_Snu13, sele
color wheat, yB_Snu13

select yB and chain L
extract yB_Snu23, sele
color violetpurple, yB_Snu23

select yB and chain M
extract yB_Prp38, sele
color pink, yB_Prp38
#color lightpink, yB_Prp38

select yB and chain N
extract yB_Spp381, sele
color hotpink, yB_Spp381

select yB and chain O
extract yB_Hsh155, sele
color lightgreen, yB_Hsh155

select yB and chain P
extract yB_Rse1, sele
color forest, yB_Rse1

select yB and chain Q
extract yB_Cus1, sele
color darkgreen, yB_Cus1

select yB and chain R
extract yB_Hsh49, sele
color limon, yB_Hsh49

select yB and chain S
extract yB_Rds3, sele
color limegreen, yB_Rds3

select yB and chain T
extract yB_Prp9, sele
color lightteal, yB_Prp9

select yB and chain U
extract yB_Prp11, sele
color bluewhite, yB_Prp11

select yB and chain V
extract yB_Prp21, sele
color greencyan, yB_Prp21

select yB and chain W
extract yB_Lea1, sele
color lightgreen, yB_Lea1

select yB and chain Y
extract yB_Msl1, sele
color lightgreen, yB_Msl1

select yB and chain Z
extract yB_Ysf3, sele
color tv_green, yB_Ysf3

select yB and (chain s or chain t or chain u or chain v or chain w or chain x or chain y)
extract yB_U2_Sm_ring, sele
color palegreen, yB_U2_Sm_ring

select yB and (chain k or chain l or chain m or chain n or chain p or chain q or chain r)
extract yB_U4_Sm_ring, sele
color wheat, yB_U4_Sm_ring

select yB and (chain b or chain d or chain e or chain f or chain g or chain h or chain i)
extract yB_U5_Sm_ring, sele
color bluewhite, yB_U5_Sm_ring

select yB and (chain 3 or chain 7 or chain 8 or chain a or chain j or chain o or chain z)
extract yB_Lsm_ring, sele
color salmon, yB_Lsm_ring

select yB and chain X
extract yB_Unknown, sele
color white, yB_Unknown


# show metals #
sel name ZN
show spheres, sel
color paleyellow, sel

sel name MG
show spheres, sel
color purple, sel

show sticks, resn IHP+I6P+GTP
util.cnc resn IHP+I6P+GTP

delete yB
group yB, yB_*

#front
set_view (\
     0.998702824,    0.009117248,    0.049969129,\
     0.008641844,    0.938904047,   -0.344043255,\
    -0.050051760,    0.344030619,    0.937613904,\
    -0.000113895,   -0.000136554, -1171.812133789,\
   352.192413330,  322.368957520,  341.565856934,\
   923.859863281, 1419.749755859,  -20.000000000 )

