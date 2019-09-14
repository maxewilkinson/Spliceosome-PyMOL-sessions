###############################################################################################################################
# PyMOL script for making human ILS complex session, using deposited coordinates from Shi lab (Zhang et al. Cell Res 2019)    #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB ###############################################

fetch 6ID1, hILS, async=0


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
select hILS and chain H
extract hILS_U2_snRNA, sele
color forest, hILS_U2_snRNA

select hILS and chain B
extract hILS_U5_snRNA, sele
color deepblue, hILS_U5_snRNA

select hILS and chain F
extract hILS_U6_snRNA, sele
color firebrick, hILS_U6_snRNA

select hILS and chain G
extract hILS_Intron, sele
color black, hILS_Intron
color lightmagenta, hILS_Intron and resi 144 and not name P



# U5 #

select hILS and chain A
extract hILS_Prp8, sele
color lightblue, hILS_Prp8

select hILS and chain C
extract hILS_Snu114, sele
color cornflowerblue, hILS_Snu114

select hILS and (chain a or chain b or chain c or chain d or chain f or chain e or chain g)
extract hILS_U5_Sm_ring, sele
color bluewhite, hILS_U5_Sm_ring

select hILS and chain E
extract hILS_U5_40K, sele
color lightsteelblue, hILS_U5_40K

# U2 #

select hILS and (chain h or chain i or chain j or chain k or chain m or chain l or chain n)
extract hILS_U2_Sm_ring, sele
color palegreen, hILS_U2_Sm_ring

select hILS and chain o
extract hILS_U2A, sele
color lightgreen, hILS_U2A

select hILS and chain p
extract hILS_U2B, sele
color lightgreen, hILS_U2B


# NTC/NTR #

select hILS and chain T
extract hILS_Prp46, sele
color lemonchiffon, hILS_Prp46

select hILS and chain R
extract hILS_Prp45, sele
color lightorange, hILS_Prp45

select hILS and chain O
extract hILS_RBM22, sele
color peachpuff, hILS_RBM22

select hILS and chain P
extract hILS_Cwc15, sele
color wheat, hILS_Cwc15

select hILS and chain N
extract hILS_Bud31, sele
color lightyellow, hILS_Bud31

select hILS and chain L
extract hILS_Cef1, sele
color brightorange, hILS_Cef1

select hILS and chain J
extract hILS_Clf1, sele
color moccasin, hILS_Clf1


select hILS and (chain q or chain r or chain s or chain t)
extract hILS_Prp19, sele
color brightorange, hILS_Prp19

select hILS and chain K
extract hILS_Snt309, sele
color brightorange, hILS_Snt309

select hILS and chain I
extract hILS_Syf1, sele
color lightorange, hILS_Syf1

select hILS and chain Q
extract hILS_AQR, sele
color raspberry, hILS_AQR

select hILS and chain M
extract hILS_Syf2, sele
color brightorange, hILS_Syf2


# factors


select hILS and chain W
extract hILS_Prp17, sele
color violetpurple, hILS_Prp17

select hILS and chain S
extract hILS_PPIL1, sele
color firebrick, hILS_PPIL1

select hILS and chain y
extract hILS_PPIE, sele
color firebrick, hILS_PPIE

# ILS proteins #

select hILS and chain V
extract hILS_Prp43, sele
color palevioletred, hILS_Prp43


select hILS and chain U
extract hILS_Cwf19, sele
color hotpink, hILS_Cwf19

delete hILS
group hILS, hILS*

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
     0.014684538,   -0.123497911,   -0.992228329,\
    -0.784513295,   -0.616659701,    0.065136984,\
    -0.619920611,    0.777469039,   -0.105950199,\
     0.005689323,    0.002173617, -1009.894287109,\
   250.377670288,  271.442474365,  271.099578857,\
   844.017456055, 1175.851806641,  -20.000000000 )


