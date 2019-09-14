#############################################################################################################################
# PyMOL script for making human C complex session, using deposited coordinates from Shi lab (Zhan et al. Science 2018)      #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB #############################################


fetch 5YZG, hC, async=0


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
select hC and chain H
extract hC_U2_snRNA, sele
color forest, hC_U2_snRNA

select hC and chain B
extract hC_U5_snRNA, sele
color deepblue, hC_U5_snRNA

select hC and chain F
extract hC_U6_snRNA, sele
color firebrick, hC_U6_snRNA

select hC and chain G
extract hC_Intron, sele
color black, hC_Intron
extract hC_Exon, hC_Intron and resi \-30-\-1
color brightorange, hC_Exon
color lightmagenta, hC_Intron and resi 144 and not name P


# U5 #

select hC and chain A
extract hC_Prp8, sele
color lightblue, hC_Prp8

select hC and chain D
extract hC_Brr2, sele
color lightsteelblue, hC_Brr2

select hC and chain C
extract hC_Snu114, sele
color cornflowerblue, hC_Snu114

select hC and (chain a or chain b or chain c or chain d or chain f or chain e or chain g)
extract hC_U5_Sm_ring, sele
color bluewhite, hC_U5_Sm_ring

select hC and chain E
extract hC_U5_40K, sele
color lightsteelblue, hC_U5_40K

# U2 #

select hC and (chain h or chain i or chain j or chain k or chain m or chain l or chain n)
extract hC_U2_Sm_ring, sele
color palegreen, hC_U2_Sm_ring

select hC and chain o
extract hC_U2A, sele
color lightgreen, hC_U2A

select hC and chain p
extract hC_U2B, sele
color lightgreen, hC_U2B



# NTC/NTR #

select hC and chain T
extract hC_Prp46, sele
color lemonchiffon, hC_Prp46

select hC and chain R
extract hC_Prp45, sele
color lightorange, hC_Prp45

select hC and chain O
extract hC_RBM22, sele
color peachpuff, hC_RBM22

select hC and chain P
extract hC_Cwc15, sele
color wheat, hC_Cwc15

select hC and chain N
extract hC_Bud31, sele
color lightyellow, hC_Bud31

select hC and chain L
extract hC_Cef1, sele
color brightorange, hC_Cef1

select hC and chain J
extract hC_Clf1, sele
color moccasin, hC_Clf1


select hC and (chain q or chain r or chain s or chain t)
extract hC_Prp19, sele
color brightorange, hC_Prp19

select hC and chain K
extract hC_Snt309, sele
color brightorange, hC_Snt309

select hC and chain I
extract hC_Syf1, sele
color lightorange, hC_Syf1

select hC and chain Q
extract hC_AQR, sele
color raspberry, hC_AQR

select hC and chain M
extract hC_Syf2, sele
color brightorange, hC_Syf2


# factors

select hC and chain U
extract hC_Cwc21, sele
color violet, hC_Cwc21

select hC and chain V
extract hC_Cwc22, sele
color mediumpurple, hC_Cwc22

select hC and chain W
extract hC_Prp17, sele
color violetpurple, hC_Prp17

select hC and chain S
extract hC_PPIL1, sele
color firebrick, hC_PPIL1

select hC and chain 1
extract hC_PPIE, sele
color firebrick, hC_PPIE

select hC and chain 2
extract hC_PPWD1, sele
color firebrick, hC_PPWD1

select hC and chain 3
extract hC_PPIG, sele
color firebrick, hC_PPIG

# C specific proteins #

select hC and chain Y
extract hC_Yju2, sele
color thistle, hC_Yju2

select hC and chain Z
extract hC_Prp16, sele
color palevioletred, hC_Prp16

select hC and chain y
extract hC_Isy1, sele
color orchid, hC_Isy1

select hC and chain X
extract hC_Cwc25, sele
color deeppurple, hC_Cwc25

# EJC

select hC and chain u
extract hC_eIF4A3, sele
color indianred, hC_eIF4A3

select hC and chain v
extract hC_Magoh, sele
color lavenderblush, hC_Magoh

select hC and chain w
extract hC_RBM8A, sele
color raspberry, hC_RBM8A

select hC and chain x
extract hC_CASC3, sele
color white, hC_CASC3

# Unknown
select hC and chain 4
extract hC_Unknown, sele
color white, hC_Unknown




delete hC

group hC, hC_*

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
     0.652848661,    0.266990781,   -0.708864272,\
    -0.549964428,   -0.476427913,   -0.685957491,\
    -0.520868003,    0.837689757,   -0.164208263,\
     0.001107901,    0.001323044, -1066.668945312,\
   267.752441406,  240.414291382,  275.549560547,\
   849.136779785, 1284.272827148,  -20.000000000 )


