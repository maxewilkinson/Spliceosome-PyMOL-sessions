################################################################################################################################
# PyMOL script for making yeast A complex session, using deposited coordinates from Nagai lab (Plaschka et al. Nature 2018)    #
######## PyMOL script by Clemens Plaschka and Pei-Chun Lin, Nagai lab, MRC LMB, adapted by Max Wilkinson #######################

fetch 6G90, yA, async=0

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
select yA and chain 1
extract yA_U1_snRNA, sele
color orchid, yA_U1_snRNA

select yA and chain 2
extract yA_U2_snRNA, sele
color forest, yA_U2_snRNA

select yA and chain A
extract yA_U1A, sele
color lavenderblush, yA_U1A

select yA and chain B
extract yA_U170k, sele
color raspberry, yA_U170k

select yA and chain C
extract yA_U1C, sele
color warmpink, yA_U1C

select yA and chain I
extract yA_Intron, sele
color black, yA_Intron
color lightmagenta, yA_Intron and resi 70 and not name P
color brightorange, yA_Intron and resi -30-0


select yA and chain D
extract yA_Prp39, sele
color pink, yA_Prp39

select yA and chain E
extract yA_Prp42, sele
color mediumpurple, yA_Prp42

select yA and chain F
extract yA_Nam8, sele
color thistle, yA_Nam8

select yA and chain G
extract yA_Snu56, sele
color palevioletred, yA_Snu56

select yA and chain H
extract yA_Luc7, sele
color purple, yA_Luc7

select yA and chain J
extract yA_Snu71, sele
color salmon, yA_Snu71

select yA and (chain b or chain d or chain e or chain f or chain g or chain h or chain i)
extract yA_U1_Sm_ring, sele
color mistyrose, yA_U1_Sm_ring

select yA and chain O
extract yA_Hsh155, sele
color lightgreen, yA_Hsh155

select yA and chain P
extract yA_Rse1, sele
color forest, yA_Rse1

select yA and chain Q
extract yA_Cus1, sele
color darkgreen, yA_Cus1

select yA and chain R
extract yA_Hsh49, sele
color limon, yA_Hsh49

select yA and chain S
extract yA_Rds3, sele
color limegreen, yA_Rds3

select yA and chain T
extract yA_Prp9, sele
color lightteal, yA_Prp9

select yA and chain U
extract yA_Prp11, sele
color bluewhite, yA_Prp11

select yA and chain V
extract yA_Prp21, sele
color greencyan, yA_Prp21

select yA and chain W
extract yA_Lea1, sele
color lightgreen, yA_Lea1

select yA and chain Y
extract yA_Msl1, sele
color lightgreen, yA_Msl1

select yA and chain Z
extract yA_Ysf3, sele
color tv_green, yA_Ysf3

select yA and (chain s or chain t or chain u or chain v or chain w or chain x or chain y)
extract yA_U2_Sm_ring, sele
color palegreen, yA_U2_Sm_ring

select yA and chain X
extract yA_Unknown, sele
color white, yA_Unknown

# show metals #
sel name ZN
show spheres, sel
color paleyellow, sel


delete yA
group yA, yA_*



#side
set_view (\
     0.998025000,    0.056551378,    0.027358023,\
    -0.060259625,    0.984874666,    0.162453830,\
    -0.017755941,   -0.163781837,    0.986334562,\
     0.000514705,    0.000105739, -826.833740234,\
   321.297515869,  314.922485352,  318.425567627,\
   666.371032715,  987.206481934,   20.000000000 )



