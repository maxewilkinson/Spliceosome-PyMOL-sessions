#############################################################################################################################
# PyMOL script for making human Cstar complex session, using deposited coordinates from Shi lab (Zhang et al. Cell 2017)    #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB #############################################

fetch 5XJC, hCstar, async=0


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
select hCstar and chain H
extract hCstar_U2_snRNA, sele
color forest, hCstar_U2_snRNA

select hCstar and chain B
extract hCstar_U5_snRNA, sele
color deepblue, hCstar_U5_snRNA

select hCstar and chain F
extract hCstar_U6_snRNA, sele
color firebrick, hCstar_U6_snRNA

select hCstar and chain G
extract hCstar_Intron, sele
color black, hCstar_Intron
extract hCstar_Exon, hCstar_Intron and resi \-30-\-1
color brightorange, hCstar_Exon
color lightmagenta, hCstar_Intron and resi 144 and not name P



# U5 #

select hCstar and chain A
extract hCstar_Prp8, sele
color lightblue, hCstar_Prp8

select hCstar and chain D
extract hCstar_Brr2, sele
color lightsteelblue, hCstar_Brr2

select hCstar and chain C
extract hCstar_Snu114, sele
color cornflowerblue, hCstar_Snu114

select hCstar and (chain a or chain b or chain c or chain d or chain f or chain e or chain g)
extract hCstar_U5_Sm_ring, sele
color bluewhite, hCstar_U5_Sm_ring

select hCstar and chain E
extract hCstar_U5_40K, sele
color lightsteelblue, hCstar_U5_40K

# U2 #

select hCstar and (chain h or chain i or chain j or chain k or chain m or chain l or chain n)
extract hCstar_U2_Sm_ring, sele
color palegreen, hCstar_U2_Sm_ring

select hCstar and chain o
extract hCstar_U2A, sele
color lightgreen, hCstar_U2A

select hCstar and chain p
extract hCstar_U2B, sele
color lightgreen, hCstar_U2B


# NTC/NTR #

select hCstar and chain T
extract hCstar_Prp46, sele
color lemonchiffon, hCstar_Prp46

select hCstar and chain R
extract hCstar_Prp45, sele
color lightorange, hCstar_Prp45

select hCstar and chain O
extract hCstar_RBM22, sele
color peachpuff, hCstar_RBM22

select hCstar and chain P
extract hCstar_Cwc15, sele
color wheat, hCstar_Cwc15

select hCstar and chain N
extract hCstar_Bud31, sele
color lightyellow, hCstar_Bud31

select hCstar and chain L
extract hCstar_Cef1, sele
color brightorange, hCstar_Cef1

select hCstar and chain J
extract hCstar_Clf1, sele
color moccasin, hCstar_Clf1


select hCstar and (chain q or chain r or chain s or chain t) 
extract hCstar_Prp19, sele
color brightorange, hCstar_Prp19

select hCstar and chain K
extract hCstar_Snt309, sele
color brightorange, hCstar_Snt309

select hCstar and chain I
extract hCstar_Syf1, sele
color lightorange, hCstar_Syf1

select hCstar and chain Q
extract hCstar_AQR, sele
color raspberry, hCstar_AQR

select hCstar and chain M
extract hCstar_Syf2, sele
color brightorange, hCstar_Syf2


# factors

select hCstar and chain U
extract hCstar_Cwc21, sele
color violet, hCstar_Cwc21

select hCstar and chain V
extract hCstar_Cwc22, sele
color mediumpurple, hCstar_Cwc22

select hCstar and chain W
extract hCstar_Prp17, sele
color violetpurple, hCstar_Prp17

select hCstar and chain S
extract hCstar_PPIL1, sele
color firebrick, hCstar_PPIL1

# C* specific proteins #

select hCstar and chain X
extract hCstar_PRKRIP1, sele
color thistle, hCstar_PRKRIP1

select hCstar and chain Y
extract hCstar_Prp22, sele
color palevioletred, hCstar_Prp22

select hCstar and chain Z
extract hCstar_Slu7, sele
color deeppurple, hCstar_Slu7



# EJC

select hCstar and chain u
extract hCstar_eIF4A3, sele
color indianred, hCstar_eIF4A3

select hCstar and chain v
extract hCstar_Magoh, sele
color lavenderblush, hCstar_Magoh

select hCstar and chain w
extract hCstar_RBM8A, sele
color raspberry, hCstar_RBM8A

select hCstar and chain x
extract hCstar_CASC3, sele
color white, hCstar_CASC3


# Unknown
select hCstar and chain 4
extract hCstar_Unknown, sele
color white, hCstar_Unknown

delete hCstar

group hCstar, hCstar*

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
    -0.262652636,    0.350999206,   -0.898776710,\
    -0.934780180,   -0.323412865,    0.146865040,\
    -0.239131987,    0.878746450,    0.413051277,\
     0.000195026,   -0.000027657, -1086.286376953,\
   236.861572266,  298.173461914,  290.233428955,\
   920.368713379, 1252.202636719,  -20.000000000 )

