#############################################################################################################################
# PyMOL script for making human Bact complex session, using deposited coordinates from Shi lab (Zhang et al. Cell Res 2018) #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB #############################################

fetch 5Z56, hBact, async=0


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
select hBact and chain H
extract hBact_U2_snRNA, sele
color forest, hBact_U2_snRNA

select hBact and chain B
extract hBact_U5_snRNA, sele
color deepblue, hBact_U5_snRNA

select hBact and chain F
extract hBact_U6_snRNA, sele
color firebrick, hBact_U6_snRNA

select hBact and chain G
extract hBact_Intron, sele
color black, hBact_Intron
color brightorange, hBact_Intron and resi \-30-0
color lightmagenta, hBact_Intron and resi 144 and not name P


# U5 #

select hBact and chain A
extract hBact_Prp8, sele
color lightblue, hBact_Prp8

select hBact and chain D
extract hBact_Brr2, sele
color lightsteelblue, hBact_Brr2

select hBact and chain C
extract hBact_Snu114, sele
color cornflowerblue, hBact_Snu114

select hBact and (chain a or chain b or chain c or chain d or chain f or chain e or chain g)
extract hBact_U5_Sm_ring, sele
color bluewhite, hBact_U5_Sm_ring

select hBact and chain E
extract hBact_U5_40K, sele
color lightsteelblue, hBact_U5_40K

# U2 #

select hBact and (chain h or chain i or chain j or chain k or chain m or chain l or chain n)
extract hBact_U2_Sm_ring, sele
color palegreen, hBact_U2_Sm_ring

select hBact and chain 1
extract hBact_SF3B1, sele
color lightgreen, hBact_SF3B1

select hBact and chain 3
extract hBact_SF3B3, sele
color forest, hBact_SF3B3

select hBact and chain 2
extract hBact_SF3B2, sele
color darkgreen, hBact_SF3B2

select hBact and chain 4
extract hBact_SF3B4, sele
color limon, hBact_SF3B4

select hBact and chain 6
extract hBact_PHF5A, sele
color limegreen, hBact_PHF5A

select hBact and chain 7
extract hBact_SF3B5, sele
color tv_green, hBact_SF3B5

select hBact and chain 5
extract hBact_SF3B6, sele
color tv_green, hBact_SF3B6

select hBact and chain w
extract hBact_SF3A3, sele
color lightteal, hBact_SF3A3

select hBact and chain v
extract hBact_SF3A2, sele
color bluewhite, hBact_SF3A2

select hBact and chain u
extract hBact_SF3A1, sele
color greencyan, hBact_SF3A1

select hBact and chain o
extract hBact_U2A, sele
color lightgreen, hBact_U2A

select hBact and chain p
extract hBact_U2B, sele
color lightgreen, hBact_U2B


# RES #

select hBact and chain X
extract hBact_SNIP1, sele
color pink, hBact_SNIP1

select hBact and chain Y
extract hBact_RBMX2, sele
color pink, hBact_RBMX2

select hBact and chain Z
extract hBact_Bud13, sele
color pink, hBact_Bud13



# NTC/NTR #

select hBact and chain T
extract hBact_Prp46, sele
color lemonchiffon, hBact_Prp46

select hBact and chain R
extract hBact_Prp45, sele
color lightorange, hBact_Prp45


select hBact and chain O
extract hBact_RBM22, sele
color peachpuff, hBact_RBM22

select hBact and chain P
extract hBact_Cwc15, sele
color wheat, hBact_Cwc15

select hBact and chain N
extract hBact_Bud31, sele
color lightyellow, hBact_Bud31

select hBact and chain L
extract hBact_Cef1, sele
color brightorange, hBact_Cef1

select hBact and chain J
extract hBact_Clf1, sele
color moccasin, hBact_Clf1


select hBact and (chain q or chain r or chain s or chain t)
extract hBact_Prp19, sele
color brightorange, hBact_Prp19

select hBact and chain K
extract hBact_Snt309, sele
color brightorange, hBact_Snt309

select hBact and chain I
extract hBact_Syf1, sele
color lightorange, hBact_Syf1

select hBact and chain Q
extract hBact_AQR, sele
color raspberry, hBact_AQR




# specific proteins #


select hBact and chain U
extract hBact_Cwc21, sele
color violet, hBact_Cwc21

select hBact and chain x
extract hBact_Prp2, sele
color raspberry, hBact_Prp2

select hBact and chain V
extract hBact_Cwc22, sele
color mediumpurple, hBact_Cwc22

select hBact and chain M
extract hBact_Cwc24, sele
color hotpink, hBact_Cwc24

select hBact and chain z
extract hBact_Cwc27, sele
color deeppurple, hBact_Cwc27

select hBact and chain W
extract hBact_Prp17, sele
color violetpurple, hBact_Prp17

select hBact and chain S
extract hBact_PPIL1, sele
color firebrick, hBact_PPIL1

select hBact and chain y
extract hBact_PPIE, sele
color firebrick, hBact_PPIE

delete hBact

group hBact, hBact*

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
     0.417152822,    0.220709532,   -0.881622732,\
    -0.769111991,   -0.431078464,   -0.471837878,\
    -0.484187394,    0.874901175,   -0.010081873,\
     0.000732452,   -0.000005603, -1115.712890625,\
   258.275512695,  252.298538208,  261.524383545,\
   879.965332031, 1351.532714844,  -20.000000000 )

