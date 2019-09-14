@splicescripts/yU1_6N7X.pml
@splicescripts/ytrisnRNP_5GAN.pml
@splicescripts/yA_6G90.pml
@splicescripts/ypB_5ZWM.pml
@splicescripts/yB_5NRL.pml
@splicescripts/yBact_5GM6.pml
@splicescripts/yBstar_6J6Q.pml
@splicescripts/yC_5LJ5.pml
@splicescripts/yCstar_5MQ0.pml
@splicescripts/yP_6EXN.pml
@splicescripts/yILS_5Y88.pml
@splicescripts/spILS_3JB9.pml
@splicescripts/htrisnRNP_6QW6.pml
@splicescripts/hpreB_6QX9.pml
@splicescripts/hB_6AHD.pml
@splicescripts/hBact_5Z56.pml
@splicescripts/hC_5YZG.pml
@splicescripts/hCstar_5XJC.pml
@splicescripts/hP_6QDV.pml
@splicescripts/hILS_6ID1.pml


#repeat following to align everything with Prp8 to yP

reference="yP_Prp8 and resi 800-1600"
aligngroup="ytri"

aligned=aligngroup+"_Prp8"
cmd.align(aligned, reference)
python
for protein in cmd.get_object_list(aligngroup):
   cmd.matrix_copy(aligned, protein)
python end

#align the rest

reference="ypB_U2_snRNA"
aligngroup="yA"

aligned=aligngroup+"_U2_snRNA"
cmd.align(aligned, reference)
python
for protein in cmd.get_object_list(aligngroup):
   cmd.matrix_copy(aligned, protein)
python end


reference="yA_U1_snRNA"
aligngroup="yU1"

aligned=aligngroup+"_U1_snRNA"
cmd.align(aligned, reference)
python
for protein in cmd.get_object_list(aligngroup):
   cmd.matrix_copy(aligned, protein)
python end



set_view (\
     0.835734606,   -0.381207913,    0.395232081,\
    -0.430021048,   -0.901945472,    0.039369021,\
     0.341483474,   -0.202870280,   -0.917724848,\
     0.000988305,    0.004243430, -1263.476562500,\
   250.473297119,  238.536666870,  250.739410400,\
  1097.576660156, 1429.411132812,  -20.000000000 )


scene mainview, store


# make yeast active site scene

disable all
enable yP
disable yP_*
enable y*_U2_snRNA
enable y*_U5_snRNA
enable y*_U6_snRNA
enable y*_Intron
enable y*_Exon

enable yBact
enable yBstar
enable yC
enable yCstar
enable yP
enable yILS

set sphere_scale, 0.7


hide cartoon, y*_U2_snRNA and not resi 20-40
hide cartoon, y*_U5_snRNA and not resi 85-109
hide cartoon, y*_U6_snRNA and not resi 46-84


hide cartoon, y*_Intron and resi 8-65
hide cartoon, y*_Intron and resi 75-90

hide cartoon, y*_Exon and resi \-16-\-8
hide cartoon, y*_Intron and resi \-16-\-8
hide cartoon, y*_Exon and resi 6-28

hide cartoon, yCstar_Exon and resi 1-20
hide cartoon, yILS_Intron and chain x
hide cartoon, yBact_Intron and resi 1-92
hide cartoon, yBact_Intron and resi 106-494
hide cartoon, yBact_Intron and resi 505-1000


#triplex
show sticks, y*_U6_snRNA and (resi 80+52+53) and (not name P+O2'+O3'+C5')
util.cnc y*_U6_snRNA and (resi 80+52+53) and (not name P)
show sticks, y*_U6_snRNA and (resi 59-61) and (not name P+O2'+O3'+C5')
util.cnc y*_U6_snRNA and (resi 59-61) and (not name P)
show sticks, y*_U2_snRNA and (resi 21-23) and (not name P+O2'+O3'+C5')
util.cnc y*_U2_snRNA and (resi 21-23) and (not name P)

#C stuff
show sticks, yC_Intron and (resi 2+68+70) and (not name P+O2'+O3'+C5')
util.cnc yC_Intron and (resi 2+68+70) and (not name P)
show sticks, yC_U2_snRNA and (resi 37) and (not name P+O2'+O3'+C5')
util.cnc yC_U2_snRNA and (resi 37) and (not name P)

show sticks, yC_Intron and resi 1 and name P+OP1+OP2
show sticks, yC_Intron and resi 68+70 and name O2'
util.cnc yC_Intron and resi 1 and name OP1+OP2

hide cartoon, yC_Exon and resi \-1
show cartoon, yC_Exon and resi \-1 and (not name O3'+C3')
show sticks, yC_Exon and resi \-1
util.cnc yC_Exon and resi \-1 and (not name P)

#Bstar stuff
show sticks, yBstar_Intron and (resi 2+68+70) and (not name P+O2'+O3'+C5')
util.cnc yBstar_Intron and (resi 2+68+70) and (not name P)
show sticks, yBstar_U2_snRNA and (resi 37) and (not name P+O2'+O3'+C5')
util.cnc yBstar_U2_snRNA and (resi 37) and (not name P)

show sticks, yBstar_Intron and resi 1 and name P+OP1+OP2
show sticks, yBstar_Intron and resi 68+70 and name O2'
util.cnc yBstar_Intron and resi 1 and name OP1+OP2

hide cartoon, yBstar_Exon and resi \-1
show cartoon, yBstar_Exon and resi \-1 and (not name O3'+C3')
show sticks, yBstar_Exon and resi \-1
util.cnc yBstar_Exon and resi \-1 and (not name P)


#Cstar stuff
show sticks, yCstar_Intron and (resi 1+2+70) and (not name P+O2'+O3'+C5')
util.cnc yCstar_Intron and (resi 1+2+70) and (not name P)

show sticks, yCstar_U6_snRNA and (resi 51) and (not name P+O2'+O3'+C5')
util.cnc yCstar_U6_snRNA and (resi 51) and (not name P)

show sticks, yCstar_Intron and resi 1 and name P+OP1+OP2
show sticks, yCstar_Intron and resi 68+70 and name O2'
util.cnc yCstar_Intron and resi 1 and name OP1+OP2


#P stuff
show sticks, yP_Intron and (resi 1+2+70+94+95) and (not name P+O2'+O3'+C5')
util.cnc yP_Intron and (resi 1+2+70+94+95) and (not name P)

show sticks, yP_U6_snRNA and (resi 51) and (not name P+O2'+O3'+C5')
util.cnc yP_U6_snRNA and (resi 51) and (not name P)

show sticks, yP_Intron and resi 1 and name P+OP1+OP2
show sticks, yP_Intron and resi 68+70 and name O2'
util.cnc yP_Intron and resi 1 and name OP1+OP2

#ILS stuff
show sticks, yILS_Intron and (resi 1+501) and (not name P+O2'+O3'+C5')
util.cnc yILS_Intron and (resi 1+501) and (not name P)

show sticks, yILS_Intron and resi 1 and name P+OP1+OP2
show sticks, yILS_Intron and resi 501 and name O2'
util.cnc yILS_Intron and resi 1 and name OP1+OP2
hide sticks, yILS_Intron and chain x


set valence, 0
set cartoon_tube_radius, 0.7
set cartoon_ring_transparency, 0.6

set_view (\
     0.660900772,   -0.689905226,   -0.295315713,\
    -0.373600602,   -0.643758357,    0.667802989,\
    -0.650841832,   -0.331032693,   -0.683227658,\
     0.003622830,    0.009778768, -299.309478760,\
   255.893966675,  270.756835938,  265.652587891,\
   133.376693726,  465.210754395,  -20.000000000 )


scene yeast_activesites, store

