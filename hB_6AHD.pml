#########################################################################################################################
# PyMOL script for making human B complex session, using deposited coordinates from Shi lab (Zhan et al. Cell Res 2018) #
############################# PyMOL script by Max Wilkinson, Nagai lab, MRC LMB #########################################


fetch 6AHD, hB, async=0



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
select hB and chain I
extract hB_U4_snRNA, sele
color paleyellow, hB_U4_snRNA

select hB and chain B
extract hB_U5_snRNA, sele
color deepblue, hB_U5_snRNA

select hB and chain F
extract hB_U6_snRNA, sele
color firebrick, hB_U6_snRNA

# U5
select hB and chain A
extract hB_Prp8, sele
color lightblue, hB_Prp8

select hB and chain D
extract hB_Brr2, sele
color lightsteelblue, hB_Brr2

select hB and chain C
extract hB_Snu114, sele
color cornflowerblue, hB_Snu114

select hB and chain N
extract hB_Prp6, sele
color palecyan, hB_Prp6

select hB and chain O
extract hB_Dib1, sele
color brightorange, hB_Dib1

select hB and chain E
extract hB_U5_40K, sele
color lightsteelblue, hB_U5_40K


# Prp4-lobe

select hB and chain J
extract hB_Prp3, sele
color tv_yellow, hB_Prp3

select hB and chain K
extract hB_Prp4, sele
color lightorange, hB_Prp4

select hB and chain M
extract hB_Snu13, sele
color wheat, hB_Snu13

select hB and chain L
extract hB_Prp31, sele
color yelloworange, hB_Prp31

# B proteins

select hB and chain X
extract hB_FBP21, sele
color raspberry, hB_FBP21

select hB and chain W
extract hB_PPIH, sele
color mistyrose, hB_PPIH

select hB and chain A0
extract hB_UBL5, sele
color orchid, hB_UBL5

select hB and chain 0
extract hB_MFAP1, sele
color lavenderblush, hB_MFAP1

select hB and chain Z
extract hB_PRPF38A, sele
color thistle, hB_PRPF38A

select hB and chain 8
extract hB_ZMAT2, sele
color violetpurple, hB_ZMAT2

select hB and chain 9
extract hB_Snu66, sele
color violetpurple, hB_Snu66

select hB and chain Y
extract hB_SMU1, sele
color lemonchiffon, hB_SMU1


# Sm rings

select hB and (chain a or chain b or chain c or chain d or chain e or chain f or chain g)
extract hB_U5_Sm_ring, sele
color bluewhite, hB_U5_Sm_ring

select hB and (chain U or chain V or chain P or chain Q or chain R or chain S or chain T)
extract hB_U4_Sm_ring, sele
color wheat, hB_U4_Sm_ring

select hB  and (chain i or chain j or chain k or chain l or chain m or chain n or chain h)
extract hB_U2_Sm_ring, sele
color palegreen, hB_U2_Sm_ring

select hB  and (chain q or chain r or chain s or chain t or chain x or chain y or chain z)
extract hB_Lsm_ring, sele
color salmon, hB_Lsm_ring

# U2 snRNP


select hB and chain H
extract hB_U2_snRNA, sele
color forest, hB_U2_snRNA

select hB and chain G
extract hB_Intron, sele
color black, hB_Intron
color brightorange, hB_Intron and resi \-30-\-1
color purple, hB_Intron and resi 144 and (not name P)

select hB and chain 1
extract hB_SF3B1, sele
color lightgreen, hB_SF3B1

select hB  and chain 3
extract hB_SF3B3, sele
color forest, hB_SF3B3

select hB  and chain 2
extract hB_SF3B2, sele
color darkgreen, hB_SF3B2

select hB  and chain 4
extract hB_SF3B4, sele
color limon, hB_SF3B4

select hB  and chain 6
extract hB_PHF5A, sele
color limegreen, hB_PHF5A

select hB  and chain w
extract hB_SF3A3, sele
color lightteal, hB_SF3A3

select hB  and chain v
extract hB_SF3A2, sele
color bluewhite, hB_SF3A2

select hB and chain u
extract hB_SF3A1, sele
color greencyan, hB_SF3A1

select hB  and chain o
extract hB_U2A, sele
color lightgreen, hB_U2A

select hB  and chain p
extract hB_U2B, sele
color lightgreen, hB_U2B

select hB  and chain 7
extract hB_SF3B5, sele
color tv_green, hB_SF3B5

select hB and chain 5
extract hB_SF3B6, sele
color tv_green, hB_SF3B6

delete hB
group hB, hB_*

# show metals #
sel name ZN
show spheres, sel
color yellow, sel

sel name MG
show spheres, sel
color purple, sel
show sticks, resn IHP+I6P+GTP
util.cnc resn IHP+I6P+GTP

set cartoon_gap_cutoff, 20


set_view (\
     0.816936195,   -0.306971669,    0.488244385,\
     0.423481196,   -0.255401701,   -0.869155884,\
     0.391504198,    0.916807830,   -0.078650400,\
    -0.001568630,   -0.000051469, -1118.614868164,\
   261.470336914,  258.540893555,  247.740463257,\
   908.863037109, 1328.385620117,  -20.000000000 )
