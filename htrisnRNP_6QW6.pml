#######################################################################################################################################
# PyMOL script for making human tri-snRNP session, using deposited coordinates from Nagai lab (Charenton et al. Science 2019)         #
###################### PyMOL script by Max Wilkinson and Clement Charenton, Nagai lab, MRC LMB ########################################

fetch 6QW6, htri, async=0

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
set_color violetBlue= [40, 0, 120]

# chain colors #
# snRNAs
select htri and chain 4
extract htri_U4_snRNA, sele
color paleyellow, htri_U4_snRNA

select htri and chain 5
extract htri_U5_snRNA, sele
color deepblue, htri_U5_snRNA

select htri and chain 6
extract htri_U6_snRNA, sele
color firebrick, htri_U6_snRNA

# U5
select htri and chain 5A
extract htri_Prp8, sele
color lightblue, htri_Prp8

select htri and chain 5B
extract htri_Brr2, sele
color lightsteelblue, htri_Brr2

select htri and chain 5C
extract htri_Snu114, sele
color cornflowerblue, htri_Snu114

select htri and chain 5J
extract htri_Prp6, sele
color palecyan, htri_Prp6

select htri and chain 5D
extract htri_Dib1, sele
color brightorange, htri_Dib1

select htri and chain 5O
extract htri_U5_40K, sele
color lightsteelblue, htri_U5_40K


# Prp4-lobe

select htri and chain 4A
extract htri_Prp3, sele
color tv_yellow, htri_Prp3

select htri and chain 4B
extract htri_Prp4, sele
color lightorange, htri_Prp4

select htri and chain 4D
extract htri_Snu13, sele
color wheat, htri_Snu13

select htri and chain 4C
extract htri_Prp31, sele
color yelloworange, htri_Prp31


select htri and chain 5X
extract htri_Prp28, sele
color raspberry, htri_Prp28

select htri and chain U
extract htri_Sad1, sele
color lightorange, htri_Sad1

select htri and chain S
extract htri_Snu66, sele
color violetpurple, htri_Snu66

select htri and chain R
extract htri_RBM42, sele
color lemonchiffon, htri_RBM42

# Sm rings

select htri and (chain 51 or chain 52 or chain 53 or chain 5b or chain 5e or chain 5f or chain 5g)
extract htri_U5_Sm_ring, sele
color bluewhite, htri_U5_Sm_ring

select htri and (chain 41 or chain 42 or chain 43 or chain 4b or chain 4e or chain 4f or chain 4g)
extract htri_U4_Sm_ring, sele
color wheat, htri_U4_Sm_ring

select htri and (chain 62 or chain 63 or chain 64 or chain 65 or chain 66 or chain 67 or chain 68)
extract htri_Lsm_ring, sele
color salmon, htri_Lsm_ring


select htri and chain X
extract htri_27K, sele
color violetBlue, htri_27K

delete htri

group htri, htri_*

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
     0.981561840,    0.176437929,    0.073534317,\
     0.039764427,    0.187805429,   -0.981401205,\
    -0.186966121,    0.966228366,    0.177326977,\
     0.000478953,   -0.000334501, -868.883544922,\
   203.256607056,  211.977828979,  202.532958984,\
   685.032287598, 1052.729492188,  -20.000000000 )

