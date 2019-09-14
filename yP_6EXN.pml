###############################################################################################################################
# PyMOL script for making yeast P complex session, using deposited coordinates from Nagai lab (Wilkinson et al. Science 2017) #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB ###############################################


fetch 6EXN, yP, async=0


# set scene #
bg_color white
#set ray_shadows, 0
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
#set_color darkgreen, [0, 100, 0]
#set_color darkseagreen, [143, 188, 143]
#set_color greenyellow, [173, 255, 47]
#set_color coral, [255, 127, 80]
#set_color darkorange, [255, 140, 0]
#set_color gold, [255, 215, 0]
set_color lemonchiffon, [255,250,205]
#set_color moccasin, [255,228,181]
#set_color lightyellow, [255,255,224]
#set_color skyblue, [135,206,235]
#set_color powderblue, [176,224,230]
#set_color royalblue, [65,105,225]
set_color cornflowerblue, [100,149,237]
#set_color steelblue, [70,130,180]
#set_color lightsteelblue, [176,196,222]


# chain colors #

# snRNA #
select yP and chain 2
extract yP_U2_snRNA, sele
color forest, yP_U2_snRNA

select yP and chain 5
extract yP_U5_snRNA, sele
color deepblue, yP_U5_snRNA

select yP and chain 6
extract yP_U6_snRNA, sele
color firebrick, yP_U6_snRNA

select yP and chain E
extract yP_Exon, sele
color brightorange, yP_Exon
color yelloworange, yP_Exon and resi 1-30

select yP and chain I
extract yP_Intron, sele
color black, yP_Intron
color lightmagenta, yP_Intron and resi 70 and not name P


# U5 #

select yP and chain A
extract yP_Prp8, sele
color lightblue, yP_Prp8

select yP and chain C
extract yP_Snu114, sele
color cornflowerblue, yP_Snu114

select yP and (chain b or chain d or chain e or chain f or chain g or chain h or chain k or chain j)
extract yP_U5_Sm_ring, sele
color bluewhite, yP_U5_Sm_ring


# U2 #

select yP and chain W
extract yP_Lea1, sele
color lightgreen, yP_Lea1

select yP and chain Y
extract yP_Msl1, sele
color lightgreen, yP_Msl1

select yP and (chain k or chain l or chain m or chain n or chain p or chain q or chain r )
extract yP_U2_Sm_ring, sele
color palegreen, yP_U2_Sm_ring


# NTC/NTR #

select yP and chain J
extract yP_Prp46, sele
color lemonchiffon, yP_Prp46

select yP and chain K
extract yP_Prp45, sele
color lightorange, yP_Prp45

select yP and chain N
extract yP_Ecm2, sele
color tv_yellow, yP_Ecm2

select yP and chain M
extract yP_Cwc2, sele
color peachpuff, yP_Cwc2

select yP and chain P
extract yP_Cwc15, sele
color wheat, yP_Cwc15

select yP and chain L
extract yP_Bud31, sele
color lightyellow, yP_Bud31

select yP and chain O
extract yP_Cef1, sele
color brightorange, yP_Cef1

select yP and chain S
extract yP_Clf1, sele
color moccasin, yP_Clf1

select yP and (chain t or chain u or chain v or chain w)
extract yP_Prp19, sele
color brightorange, yP_Prp19

select yP and chain s
extract yP_Snt309, sele
color brightorange, yP_Snt309

select yP and chain T
extract yP_Syf1, sele
color lightorange, yP_Syf1

select yP and chain y
extract yP_Syf2, sele
color brightorange, yP_Syf2


# C* specific proteins #

select yP and chain R
extract yP_Cwc21, sele
color violet, yP_Cwc21

select yP and chain H
extract yP_Cwc22, sele
color violet, yP_Cwc22
color mediumpurple, yP_Cwc22


select yP and chain a
extract yP_Prp18, sele
color hotpink, yP_Prp18

select yP and chain o
extract yP_Prp17, sele
color violetpurple, yP_Prp17

select yP and chain V
extract yP_Prp22, sele
color raspberry, yP_Prp22

select yP and chain c
extract yP_Slu7, sele
color deeppurple, yP_Slu7

select yP and chain D
extract yP_Yju2, sele
color pink, yP_Yju2

# UNKNOWN
select yP and chain X
extract yP_Unknown, sele
color white, yP_Unknown

delete yP
group yP, yP_*



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
     0.674891770,   -0.352280945,    0.648389578,\
    -0.439635426,   -0.897670925,   -0.030115895,\
     0.592642784,   -0.264727056,   -0.760699689,\
    -0.007897735,    0.004491180, -1026.595825195,\
   277.550354004,  267.541595459,  277.006958008,\
   827.363769531, 1226.079711914,  -20.000000000 )

