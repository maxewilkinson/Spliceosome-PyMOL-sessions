################################################################################################################################
# PyMOL script for making yeast U1 snRNP session, using deposited coordinates from Zhao/Zhou labs (Li et al. Nat Commun 2017)  #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB ################################################


fetch 6N7X, yU1, async=0



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
select yU1 and chain R
extract yU1_U1_snRNA, sele
color orchid, yU1_U1_snRNA

select yU1 and chain C
extract yU1_U1A, sele
color lavenderblush, yU1_U1A

select yU1 and chain A
extract yU1_U170k, sele
color raspberry, yU1_U170k

select yU1 and chain B
extract yU1_U1C, sele
color warmpink, yU1_U1C

select yU1 and chain E
extract yU1_Prp39, sele
color pink, yU1_Prp39

select yU1 and chain D
extract yU1_Prp42, sele
color mediumpurple, yU1_Prp42

select yU1 and chain F
extract yU1_Nam8, sele
color thistle, yU1_Nam8

select yU1 and chain G
extract yU1_Snu56, sele
color palevioletred, yU1_Snu56

select yU1 and chain H
extract yU1_Snu71, sele
color salmon, yU1_Snu71

select yU1 and (chain K or chain L or chain M or chain N or chain O or chain P or chain Q)
extract yU1_U1_Sm_ring, sele
color mistyrose, yU1_U1_Sm_ring


# show metals #
sel name ZN
show spheres, sel
color yellow, sel

sel name MG
show spheres, sel
color purple, sel

show sticks, resn IHP+I6P+GTP
util.cnc resn IHP+I6P+GTP


delete yU1
group yU1, yU1_*


set_view (\
    -0.505598843,   -0.848374486,    0.156945854,\
     0.823103130,   -0.528829157,   -0.206985816,\
     0.258598149,    0.024530662,    0.965675175,\
     0.000000000,    0.000000000, -701.013732910,\
   225.165878296,  209.668624878,  212.466781616,\
   638.619995117,  763.407592773,  -20.000000000 )


