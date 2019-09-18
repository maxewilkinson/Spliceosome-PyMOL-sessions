################################################################################################################################
# PyMOL script for making yeast U1 snRNP session, using deposited coordinates from Zhao/Zhou labs (Li et al. Nat Commun 2017)  #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB ################################################


fetch 6N7P, yE, async=0



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
select yE and chain R
extract yE_U1_snRNA, sele
color orchid, yE_U1_snRNA

select yE and chain r
extract yE_Intron, sele
color black, yE_Intron
color brightorange, yE_Intron and resi -30-0

select yE and chain C
extract yE_U1A, sele
color lavenderblush, yE_U1A

select yE and chain A
extract yE_U170k, sele
color raspberry, yE_U170k

select yE and chain B
extract yE_U1C, sele
color warmpink, yE_U1C

select yE and chain E
extract yE_Prp39, sele
color pink, yE_Prp39

select yE and chain D
extract yE_Prp42, sele
color mediumpurple, yE_Prp42

select yE and chain F
extract yE_Nam8, sele
color thistle, yE_Nam8

select yE and chain G
extract yE_Snu56, sele
color palevioletred, yE_Snu56

select yE and chain H
extract yE_Snu71, sele
color salmon, yE_Snu71

select yE and chain I
extract yE_Luc7, sele
color purple, yE_Luc7

select yE and chain J
extract yE_Prp40, sele
color wheat, yE_Prp40

select yE and (chain K or chain L or chain M or chain N or chain O or chain P or chain Q)
extract yE_U1_Sm_ring, sele
color mistyrose, yE_U1_Sm_ring

select yE and chain X
extract yE_Cbc1, sele
color moccasin, yE_Cbc1

select yE and chain Y
extract yE_Cbc2, sele
color lemonchiffon, yE_Cbc2


# show metals #
sel name ZN
show spheres, sel
color yellow, sel

sel name MG
show spheres, sel
color purple, sel

show sticks, resn IHP+I6P+GTP
util.cnc resn IHP+I6P+GTP


delete yE
group yE, yE_*


set_view (\
     0.658495903,   -0.278607160,   -0.699107528,\
    -0.083907865,    0.895973444,   -0.436091900,\
     0.747883677,    0.345823914,    0.566621184,\
    -0.005216628,   -0.005081326, -847.850219727,\
   277.028991699,  258.687011719,  267.060913086,\
   714.150756836,  981.643920898,  -20.000000000 )


