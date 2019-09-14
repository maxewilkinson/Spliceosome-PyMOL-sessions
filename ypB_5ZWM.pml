############################################################################################################################
# PyMOL script for making yeast preB complex session, using deposited coordinates from Shi lab (Bai et al. Science 2018)   #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB ############################################

fetch 5ZWM, async=0

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
select 5ZWM and chain I
extract ypB_U4_snRNA, sele
color paleyellow, ypB_U4_snRNA

select 5ZWM and chain B
extract ypB_U5_snRNA, sele
color deepblue, ypB_U5_snRNA

select 5ZWM and chain F
extract ypB_U6_snRNA, sele
color firebrick, ypB_U6_snRNA

select 5ZWM and chain G
extract ypB_IntronBPS, sele
color black, ypB_IntronBPS

select 5ZWM and chain H
extract ypB_U2_snRNA, sele
color forest, ypB_U2_snRNA

# U5
select 5ZWM and chain A
extract ypB_Prp8, sele
color lightblue, ypB_Prp8

select 5ZWM and chain D
extract ypB_Brr2, sele
color lightsteelblue, ypB_Brr2

select 5ZWM and chain C
extract ypB_Snu114, sele
color cornflowerblue, ypB_Snu114

select 5ZWM and chain N
extract ypB_Prp6, sele
color palecyan, ypB_Prp6

select 5ZWM and chain E
extract ypB_Dib1, sele
color brightorange, ypB_Dib1


# Prp4-lobe

select 5ZWM and chain J
extract ypB_Prp3, sele
color tv_yellow, ypB_Prp3

select 5ZWM and chain K
extract ypB_Prp4, sele
color lightorange, ypB_Prp4

select 5ZWM and chain M
extract ypB_Snu13, sele
color wheat, ypB_Snu13

select 5ZWM and chain L
extract ypB_Prp31, sele
color yelloworange, ypB_Prp31

# Other

select 5ZWM and chain Y
extract ypB_Bud13, sele
color raspberry, ypB_Bud13

select 5ZWM and chain Z
extract ypB_Pml1, sele
color violetpurple, ypB_Pml1

select 5ZWM and chain O
extract ypB_Snu66, sele
color violetpurple, ypB_Snu66



# Sm rings

select 5ZWM and (chain d or chain a or chain b or chain c or chain e or chain f or chain g)
extract ypB_U5_Sm_ring, sele
color bluewhite, ypB_U5_Sm_ring

select 5ZWM and (chain S or chain P or chain Q or chain R or chain T or chain U or chain V)
extract ypB_U4_Sm_ring, sele
color wheat, ypB_U4_Sm_ring

select 5ZWM and (chain l or chain h or chain m or chain n or chain i or chain j or chain k)
extract ypB_U2_Sm_ring, sele
color palegreen, ypB_U2_Sm_ring


select 5ZWM and (chain z or chain q or chain r or chain x or chain t or chain y or chain s)
extract ypB_Lsm_ring, sele
color salmon, ypB_Lsm_ring


#U2 snRNP

select 5ZWM and chain 1
extract ypB_Hsh155, sele
color lightgreen, ypB_Hsh155

select 5ZWM and chain 3
extract ypB_Rse1, sele
color forest, ypB_Rse1

select 5ZWM and chain 2
extract ypB_Cus1, sele
color darkgreen, ypB_Cus1

select 5ZWM and chain 4
extract ypB_Hsh49, sele
color limon, ypB_Hsh49

select 5ZWM and chain 5
extract ypB_Rds3, sele
color limegreen, ypB_Rds3

select 5ZWM and chain u
extract ypB_Prp9, sele
color lightteal, ypB_Prp9

select 5ZWM and chain v
extract ypB_Prp11, sele
color bluewhite, ypB_Prp11

select 5ZWM and chain w
extract ypB_Prp21, sele
color greencyan, ypB_Prp21

select 5ZWM and chain o
extract ypB_Lea1, sele
color lightgreen, ypB_Lea1

select 5ZWM and chain p
extract ypB_Msl1, sele
color lightgreen, ypB_Msl1

select 5ZWM and chain 6
extract ypB_Ysf3, sele
color tv_green, ypB_Ysf3

select 5ZWM and chain X
extract ypB_Snu17, sele
color tv_green, ypB_Snu17



fetch 5ZWN, async=0

# U1 snRNP

# chain colors #
select chain P and 5ZWN
extract ypB_U1_snRNA, sele
color orchid, ypB_U1_snRNA

select chain S and 5ZWN
extract ypB_U1A, sele
color lavenderblush, ypB_U1A

select chain Q and 5ZWN
extract ypB_U170k, sele
color raspberry, ypB_U170k

select chain R and 5ZWN
extract ypB_U1C, sele
color warmpink, ypB_U1C

select chain U and 5ZWN
extract ypB_Prp39, sele
color pink, ypB_Prp39

select chain T and 5ZWN
extract ypB_Prp42, sele
color mediumpurple, ypB_Prp42

select chain V and 5ZWN
extract ypB_Nam8, sele
color thistle, ypB_Nam8

select chain W and 5ZWN
extract ypB_Snu56, sele
color palevioletred, ypB_Snu56

select chain Y and 5ZWN
extract ypB_Luc7, sele
color purple, ypB_Luc7

select chain X and 5ZWN
extract ypB_Snu71, sele
color salmon, ypB_Snu71

select (chain a or chain b or chain c or chain d or chain e or chain f or chain g) and 5ZWN
extract ypB_U1_Sm_ring, sele
color mistyrose, ypB_U1_Sm_ring

select chain y and 5ZWN
extract ypB_Prp28, sele
color raspberry, ypB_Prp28

select ypB_IntronBPS or (chain G and 5ZWN)
extract ypB_Intron, sele
color black, ypB_Intron
color brightorange, ypB_Intron and resi /-30-0
color lightmagenta, ypB_Intron and resi 501 and not name P

select chain x and 5ZWN
extract ypB_Unknown, sele
color white, ypB_Unknown

delete ypB_IntronBPS
delete 5ZWM
delete 5ZWN

group ypB, ypB_*


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
     0.816043556,   -0.451982290,    0.360240221,\
     0.186417237,   -0.384139121,   -0.904255509,\
     0.547091603,    0.805069029,   -0.229218453,\
    -0.000070572,    0.000072718, -1344.926513672,\
   272.717590332,  248.889892578,  245.232696533,\
  1107.822387695, 1582.029541016,  -20.000000000 )


