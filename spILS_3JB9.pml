####################################################################################################################
# PyMOL script for making S. pombe ILS session, using deposited coordinates from Shi lab (Yan et al. Science 2015) #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB ####################################


fetch 3JB9, spILS, async=0


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
select spILS and chain P
extract spILS_U2_snRNA, sele
color forest, spILS_U2_snRNA

select spILS and chain C
extract spILS_U5_snRNA, sele
color deepblue, spILS_U5_snRNA

select spILS and chain N
extract spILS_U6_snRNA, sele
color firebrick, spILS_U6_snRNA


select spILS and chain O+Q
extract spILS_Intron, sele
color black, spILS_Intron
color lightmagenta, spILS_Intron and resi 501 and not name P


# U5 #

select spILS and chain A
extract spILS_Prp8, sele
color lightblue, spILS_Prp8

select spILS and chain B
extract spILS_Snu114, sele
color cornflowerblue, spILS_Snu114

select spILS and (chain D or chain E or chain F or chain G or chain H or chain I or chain J)
extract spILS_U5_Sm_ring, sele
color bluewhite, spILS_U5_Sm_ring

select spILS and chain L
extract spILS_U5_40K, sele
color lightsteelblue, spILS_U5_40K


# U2 #

select spILS and chain j
extract spILS_U2A, sele
color lightgreen, spILS_U2A

select spILS and chain k
extract spILS_U2B, sele
color lightgreen, spILS_U2B

select spILS and (chain Z or chain b or chain f or chain l or chain m or chain n or chain o )
extract spILS_U2_Sm_ring, sele
color palegreen, spILS_U2_Sm_ring


# NTC/NTR #

select spILS and chain K
extract spILS_Prp46, sele
color lemonchiffon, spILS_Prp46

select spILS and chain M
extract spILS_Prp45, sele
color lightorange, spILS_Prp45

select spILS and chain a
extract spILS_Ecm2, sele
color tv_yellow, spILS_Ecm2

select spILS and chain Y
extract spILS_Cwc2, sele
color peachpuff, spILS_Cwc2

select spILS and chain h
extract spILS_Cwc15, sele
color wheat, spILS_Cwc15

select spILS and chain e
extract spILS_Bud31, sele
color lightyellow, spILS_Bud31

select spILS and chain W
extract spILS_Cef1, sele
color brightorange, spILS_Cef1

select spILS and chain R
extract spILS_Clf1, sele
color moccasin, spILS_Clf1

select spILS and (chain S or chain T or chain U or chain V)
extract spILS_Prp19, sele
color brightorange, spILS_Prp19

select spILS and chain i
extract spILS_Snt309, sele
color brightorange, spILS_Snt309

select spILS and chain r
extract spILS_Syf1, sele
color lightorange, spILS_Syf1

select spILS and chain X
extract spILS_AQR, sele
color raspberry, spILS_AQR

# Factors #

select spILS and chain g
extract spILS_Prp17, sele
color violetpurple, spILS_Prp17

select spILS and chain c
extract spILS_Cwf19, sele
color hotpink, spILS_Cwf19

select spILS and chain d
extract spILS_Ppi1, sele
color firebrick, spILS_Ppi1


# UNKNOWN
select spILS and chain x
extract spILS_Unknown, sele
color white, spILS_Unknown

delete spILS
group spILS, spILS_*


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
    -0.022742361,    0.252531737,   -0.967322171,\
    -0.810751259,   -0.570786595,   -0.129948497,\
    -0.584947348,    0.781304121,    0.217719406,\
     0.000794798,    0.000820175, -930.160461426,\
   250.998306274,  252.256164551,  242.875793457,\
   771.493957520, 1088.765258789,  -20.000000000 )

