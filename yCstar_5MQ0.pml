##############################################################################################################################
# PyMOL script for making yeast Cstar complex session, using deposited coordinates from Nagai lab (Fica et al. Nature 2017) #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB ##############################################


fetch 5MQ0, yCstar, async=0

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
select yCstar and chain 2
extract yCstar_U2_snRNA, sele
color forest, yCstar_U2_snRNA

select yCstar and chain 5
extract yCstar_U5_snRNA, sele
color deepblue, yCstar_U5_snRNA

select yCstar and chain 6
extract yCstar_U6_snRNA, sele
color firebrick, yCstar_U6_snRNA

select yCstar and chain I
extract yCstar_Intron, sele
color black, yCstar_Intron
color lightmagenta, yCstar_Intron and resi 70 and not name P

select yCstar and (chain E or chain 3)
extract yCstar_Exon, sele
color brightorange, yCstar_Exon

# U5 #

select yCstar and chain A
extract yCstar_Prp8, sele
color lightblue, yCstar_Prp8


select yCstar and chain C
extract yCstar_Snu114, sele
color cornflowerblue, yCstar_Snu114

select yCstar and (chain b or chain d or chain e or chain f or chain g or chain h or chain i or chain j)
extract yCstar_U5_Sm_ring, sele
color bluewhite, yCstar_U5_Sm_ring


# U2 #

select yCstar and chain W
extract yCstar_Lea1, sele
color lightgreen, yCstar_Lea1

select yCstar and chain Y
extract yCstar_Msl1, sele
color lightgreen, yCstar_Msl1

select yCstar and (chain k or chain l or chain m or chain n or chain p or chain q or chain r ) 
extract yCstar_U2_Sm_ring, sele
color palegreen, yCstar_U2_Sm_ring

# NTR #

select yCstar and chain J
extract yCstar_Prp46, sele
color lemonchiffon, yCstar_Prp46

select yCstar and chain K
extract yCstar_Prp45, sele
color lightorange, yCstar_Prp45

select yCstar and chain N
extract yCstar_Ecm2, sele
color tv_yellow, yCstar_Ecm2

select yCstar and chain M
extract yCstar_Cwc2, sele
color peachpuff, yCstar_Cwc2

select yCstar and chain P
extract yCstar_Cwc15, sele
color wheat, yCstar_Cwc15

select yCstar and chain L
extract yCstar_Bud31, sele
color lightyellow, yCstar_Bud31

#NTC

select yCstar and chain O
extract yCstar_Cef1, sele
color brightorange, yCstar_Cef1

select yCstar and chain S
extract yCstar_Clf1, sele
color moccasin, yCstar_Clf1

select yCstar and (chain t or chain u or chain v or chain w) 
extract yCstar_Prp19, sele
color brightorange, yCstar_Prp19

select yCstar and chain s
extract yCstar_Snt309, sele
color brightorange, yCstar_Snt309

select yCstar and chain T
extract yCstar_Syf1, sele
color lightorange, yCstar_Syf1

select yCstar and chain y
extract yCstar_Syf2, sele
color brightorange, yCstar_Syf2



# C specific proteins #

select yCstar and chain R
extract yCstar_Cwc21, sele
color violet, yCstar_Cwc21

select yCstar and chain H
extract yCstar_Cwc22, sele
color violet, Cwc22
color mediumpurple, yCstar_Cwc22

select yCstar and chain o
extract yCstar_Prp17, sele
color violetpurple, yCstar_Prp17


select yCstar and chain a
extract yCstar_Prp18, sele
color orchid, yCstar_Prp18


select yCstar and chain V
extract yCstar_Prp22, sele
color raspberry, yCstar_Prp22

select yCstar and chain c
extract yCstar_Slu7, sele
color deeppurple, yCstar_Slu7

select yCstar and chain X
extract yCstar_unknown, sele
color white, yCstar_unknown


delete yCstar
group yCstar, yCstar*

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
     0.597135067,   -0.416394323,    0.685597539,\
    -0.385387152,   -0.898528934,   -0.210053176,\
     0.703492880,   -0.138789594,   -0.697016120,\
    -0.001381300,   -0.000229508, -926.527832031,\
   301.968200684,  294.451293945,  310.121551514,\
   801.072998047, 1052.078735352,  -20.000000000 )


