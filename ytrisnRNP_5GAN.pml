############################################################################################################################
# PyMOL script for making yeast tri-snRNP session, using deposited coordinates from Nagai lab (Nguyen et al. Nature 2016)  #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB ############################################

fetch 5GAN, ytri, async=0

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
# snRNAs
select ytri and chain V
extract ytri_U4_snRNA, sele
color paleyellow, ytri_U4_snRNA

select ytri and chain U
extract ytri_U5_snRNA, sele
color deepblue, ytri_U5_snRNA

select ytri and chain W
extract ytri_U6_snRNA, sele
color firebrick, ytri_U6_snRNA

# U5
select ytri and chain A
extract ytri_Prp8, sele
color lightblue, ytri_Prp8

select ytri and chain B
extract ytri_Brr2, sele
color lightsteelblue, ytri_Brr2

select ytri and chain C
extract ytri_Snu114, sele
color cornflowerblue, ytri_Snu114

select ytri and chain J
extract ytri_Prp6, sele
color palecyan, ytri_Prp6

select ytri and chain D
extract ytri_Dib1, sele
color brightorange, ytri_Dib1

# Prp4-lobe

select ytri and chain G
extract ytri_Prp3, sele
color tv_yellow, ytri_Prp3

select ytri and chain H
extract ytri_Prp4, sele
color lightorange, ytri_Prp4

select ytri and chain K
extract ytri_Snu13, sele
color wheat, ytri_Snu13

select ytri and chain F
extract ytri_Prp31, sele
color yelloworange, ytri_Prp31

select ytri and chain E
extract ytri_Snu66, sele
color violetpurple, ytri_Snu66

# Sm rings

select ytri and (chain b or chain d or chain e or chain f or chain g or chain h or chain j)
extract ytri_U5_Sm_ring, sele
color bluewhite, ytri_U5_Sm_ring

select ytri and (chain k or chain l or chain m or chain n or chain p or chain q or chain r)
extract ytri_U4_Sm_ring, sele
color wheat, ytri_U4_Sm_ring

select ytri and (chain 2 or chain 3 or chain 4 or chain 5 or chain 6 or chain 7 or chain 8)
extract ytri_Lsm_ring, sele
color salmon, ytri_Lsm_ring

select ytri and chain x
extract ytri_Unknown, sele
color white, ytri_Unknown


# show metals #
sel name ZN
show spheres, sel
color yellow, sel

sel name MG
show spheres, sel
color purple, sel

show sticks, resn IHP+I6P+GTP
util.cnc resn IHP+I6P+GTP


delete ytri
group ytri, ytri_*

set_view (\
     0.508584738,    0.743785203,    0.433732629,\
     0.286310315,   -0.621172249,    0.729500473,\
     0.812013090,   -0.246830449,   -0.528871119,\
    -0.000712782,    0.000262171, -909.245178223,\
   267.411743164,  281.076110840,  278.889190674,\
   730.089355469, 1088.449829102,  -20.000000000 )

