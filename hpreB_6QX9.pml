##########################################################################################################################################
# PyMOL script for making human preB complex session, using deposited coordinates from Nagai lab (Charenton et al. Science 2019)         #
###################### PyMOL script by Max Wilkinson and Clement Charenton, Nagai lab, MRC LMB ###########################################

fetch 6QX9, hpreB, async=0

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
set_color violetBlue= [40, 0, 120]


# chain colors #
# snRNAs
select hpreB and chain 4
extract hpB_U4_snRNA, sele
color paleyellow, hpB_U4_snRNA

select hpreB and chain 5
extract hpB_U5_snRNA, sele
color deepblue, hpB_U5_snRNA


# U5
select hpreB and chain 5A
extract hpB_Prp8, sele
color lightblue, hpB_Prp8

select hpreB and chain 5B
extract hpB_Brr2, sele
color lightsteelblue, hpB_Brr2

select hpreB and chain 5C
extract hpB_Snu114, sele
color cornflowerblue, hpB_Snu114

select hpreB and chain 5J
extract hpB_Prp6, sele
color palecyan, hpB_Prp6

select hpreB and chain 5D
extract hpB_Dib1, sele
color brightorange, hpB_Dib1

select hpreB and chain 5O
extract hpB_U5_40K, sele
color lightsteelblue, hpB_U5_40K


# Prp4-lobe

select hpreB and chain 4A
extract hpB_Prp3, sele
color tv_yellow, hpB_Prp3

select hpreB and chain 4B
extract hpB_Prp4, sele
color lightorange, hpB_Prp4

select hpreB and chain 4D
extract hpB_Snu13, sele
color wheat, hpB_Snu13

select hpreB and chain 4C
extract hpB_Prp31, sele
color yelloworange, hpB_Prp31



select hpreB and chain 5X
extract hpB_Prp28, sele
color raspberry, hpB_Prp28

select hpreB and chain U
extract hpB_Sad1, sele
color lightorange, hpB_Sad1

select hpreB and chain S
extract hpB_Snu66, sele
color violetpurple, hpB_Snu66

select hpreB and chain R
extract hpB_RBM42, sele
color lemonchiffon, hpB_RBM42


select hpreB and chain X
extract hpB_27K, sele
color violetBlue, hpB_27K




# Sm rings

select hpreB and (chain 5b or chain 53 or chain 5e or chain 5f or chain 5g or chain 51 or chain 52)
extract hpB_U5_Sm_ring, sele
color bluewhite, hpB_U5_Sm_ring

select hpreB and (chain 41 or chain 42 or chain 43 or chain 4b or chain 4e or chain 4f or chain 4g)
extract hpB_U4_Sm_ring, sele
color wheat, hpB_U4_Sm_ring


# U1 snRNP

select hpreB and (chain 11 or chain 12 or chain 13 or chain 1b or chain 1e or chain 1f or chain 1g)
extract hpB_U1_Sm_ring, sele
color mistyrose, hpB_U1_Sm_ring

select hpreB and chain 1
extract hpB_U1_snRNA, sele
color orchid, hpB_U1_snRNA

select hpreB and chain 1A
extract hpB_U1A, sele
color lavenderblush, hpB_U1A

select hpreB and chain 1K
extract hpB_U170k, sele
color thistle, hpB_U170k

select hpreB and chain 1C
extract hpB_U1C, sele
color warmpink, hpB_U1C

#U2snRNP

select hpreB and chain 2
extract hpB_U2_snRNA, sele
color forest, hpB_U2_snRNA

select hpreB and chain I
extract hpB_pre-mRNA, sele
color black, hpB_pre-mRNA
color brightorange, hpB_pre-mRNA and resi /-1-0
color lightmagenta, hpB_pre-mRNA and resi 100 and not name P

select hpreB and chain B1
extract hpB_SF3B1, sele
color lightgreen, hpB_SF3B1

select hpreB and chain B3
extract hpB_SF3B3, sele
color forest, hpB_SF3B3

select hpreB and chain B2
extract hpB_SF3B2, sele
color darkgreen, hpB_SF3B2

select hpreB and chain B4
extract hpB_SF3B4, sele
color limon, hpB_SF3B4

select hpreB and chain BP
extract hpB_PHF5A, sele
color limegreen, hpB_PHF5A

select hpreB and chain A3
extract hpB_SF3A3, sele
color lightteal, hpB_SF3A3

select hpreB and chain A2
extract hpB_SF3A2, sele
color bluewhite, hpB_SF3A2

select hpreB and chain A1
extract hpB_SF3A1, sele
color greencyan, hpB_SF3A1

select hpreB and chain 2A
extract hpB_U2A, sele
color lightgreen, hpB_U2A

select hpreB and chain 2B
extract hpB_U2B, sele
color lightgreen, hpB_U2B

select hpreB and chain B5
extract hpB_SF3B5, sele
color tv_green, hpB_SF3B5

select hpreB and (chain 21 or chain 22 or chain 23 or chain 2b or chain 2e or chain 2f or chain 2g)
extract hpB_U2_Sm_ring, sele
color palegreen, hpB_U2_Sm_ring

select hpreB and (chain 62 or chain 63 or chain 64 or chain 65 or chain 66 or chain 67 or chain 68)
extract hpB_Lsm_ring, sele
color salmon, hpB_Lsm_ring

select hpreB and chain 6
extract hpB_U6_snRNA, sele
color firebrick, hpB_U6_snRNA

select hpreB and chain K
extract hpB_Prp4Kinase, sele
color mediumpurple, hpB_Prp4Kinase

delete hpreB


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


group hpB_tri, hpB_U4_snRNA and hpB_U5_snRNA and hpB_Prp8 and hpB_Brr2 and hpB_Snu114 and hpB_Prp6 and hpB_Dib1 and hpB_U5_40K and hpB_Prp3 and hpB_Prp4 and hpB_Snu13 and hpB_Prp31 and hpB_Prp28 and hpB_Sad1 and hpB_Snu66 and hpB_RBM42 and hpB_27K and hpB_U5_Sm_ring and hpB_U4_Sm_ring and hpB_Lsm_ring and hpB_U6_snRNA
group hpB_A, hpB_U1_Sm_ring and hpB_U1_snRNA and hpB_U1A and hpB_U170k and hpB_U1C and hpB_U2_snRNA and hpB_pre-mRNA and hpB_SF3B1 and hpB_SF3B3 and hpB_SF3B2 and hpB_SF3B4 and hpB_PHF5A and hpB_SF3A3 and hpB_SF3A2 and hpB_SF3A1 and hpB_U2A and hpB_U2B and hpB_SF3B5 and hpB_U2_Sm_ring and hpB_Prp4Kinase

group hpreB, hpB_tri and hpB_A


set_view (\
    -0.623081744,    0.558374345,    0.547710538,\
     0.586973608,   -0.129001126,    0.799261749,\
     0.516941905,    0.819496393,   -0.247373313,\
    -0.000338778,   -0.000565410, -1199.497314453,\
   262.030059814,  211.948379517,  223.996322632,\
  1015.649108887, 1383.346557617,  -20.000000000 )



