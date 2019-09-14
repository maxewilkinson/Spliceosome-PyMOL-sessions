###########################################################################################################################
# PyMOL script for making yeast Bstar-b2 complex session, using deposited coordinates from Shi lab (Wan et al. Cell 2019) #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB ###########################################

fetch 6J6Q, yBstar, async=0

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
select yBstar and chain L
extract yBstar_U2_snRNA, sele
color forest, yBstar_U2_snRNA

select yBstar and chain D
extract yBstar_U5_snRNA, sele
color deepblue, yBstar_U5_snRNA

select yBstar and chain E
extract yBstar_U6_snRNA, sele
color firebrick, yBstar_U6_snRNA

select yBstar and chain B
extract yBstar_Intron, sele
color black, yBstar_Intron
color lightmagenta, yBstar_Intron and resi 70 and not name P
color brightorange, yBstar_Intron and resi -30-0



# U5 #

select yBstar and chain A
extract yBstar_Prp8, sele
color lightblue, yBstar_Prp8

select yBstar and chain C
extract yBstar_Snu114, sele
color cornflowerblue, yBstar_Snu114

select yBstar and (chain i or chain m or chain j or chain h or chain g or chain k or chain l)
extract yBstar_U5_Sm_ring, sele
color bluewhite, yBstar_U5_Sm_ring


# U2 #

select yBstar and chain b
extract yBstar_Lea1, sele
color lightgreen, yBstar_Lea1

select yBstar and chain a
extract yBstar_Msl1, sele
color lightgreen, yBstar_Msl1

select yBstar and (chain u or chain z or chain x or chain w or chain e or chain s or chain y) 
extract yBstar_U2_Sm_ring, sele
color palegreen, yBstar_U2_Sm_ring

# NTR #

select yBstar and chain O
extract yBstar_Prp46, sele
color lemonchiffon, yBstar_Prp46

select yBstar and chain P
extract yBstar_Prp45, sele
color lightorange, yBstar_Prp45

select yBstar and chain Q
extract yBstar_Ecm2, sele
color tv_yellow, yBstar_Ecm2

select yBstar and chain R
extract yBstar_Cwc2, sele
color peachpuff, yBstar_Cwc2

select yBstar and chain S
extract yBstar_Cwc15, sele
color wheat, yBstar_Cwc15

select yBstar and chain T
extract yBstar_Bud31, sele
color lightyellow, yBstar_Bud31

#NTC

select yBstar and chain c
extract yBstar_Cef1, sele
color brightorange, yBstar_Cef1

select yBstar and chain d
extract yBstar_Clf1, sele
color moccasin, yBstar_Clf1

select yBstar and (chain r or chain p or chain q or chain o) 
extract yBstar_Prp19, sele
color brightorange, yBstar_Prp19

select yBstar and chain t
extract yBstar_Snt309, sele
color brightorange, yBstar_Snt309

select yBstar and chain v
extract yBstar_Syf1, sele
color lightorange, yBstar_Syf1

select yBstar and chain I
extract yBstar_Syf2, sele
color brightorange, yBstar_Syf2



# C specific proteins #

select yBstar and chain J
extract yBstar_Cwc21, sele
color violet, yBstar_Cwc21

select yBstar and chain Z
extract yBstar_Cwc22, sele
color violet, yBstar_Cwc22
color mediumpurple, yBstar_Cwc22

select yBstar and chain n
extract yBstar_Prp17, sele
color violetpurple, yBstar_Prp17


select yBstar and chain F
extract yBstar_Yju2, sele
color thistle, yBstar_Yju2


select yBstar and chain H
extract yBstar_Isy1, sele
color orchid, yBstar_Isy1


delete yBstar
group yBstar, yBstar_*


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
     0.478645474,    0.127363190,   -0.868719518,\
    -0.557971478,   -0.719811022,   -0.412965357,\
    -0.677909613,    0.682385564,   -0.273468435,\
     0.000497550,   -0.001439273, -891.428405762,\
   285.264617920,  283.856781006,  265.866882324,\
   765.942565918, 1016.948364258,  -20.000000000 )

