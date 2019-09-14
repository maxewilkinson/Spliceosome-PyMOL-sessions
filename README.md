# Spliceosome-PyMOL-sessions
PyMOL scripts and session files for published cryoEM structures of the spliceosome

Run each .pml file in PyMOL to produce a session for that spliceosome. For example, running yP_6EXN.pml will fetch coordinates for the yeast P complex from the PDB, split it into individual named chains, and make everything look nice. The scripts don't overlap, so you can run as many as you like to have whatever spliceosomes you like in the one PyMOL session. Each spliceosome is put in its own group to keep things tidy.
![Yeast P complex](https://github.com/maxewilkinson/Spliceosome-PyMOL-sessions/blob/master/yP.png)

For fun, follow the instructions in all_spliceosome_structures.pml. In summary, first run all .pml files to make a mega session with all spliceosome structures. Then run the hacky python script to align all the groups together. (You only need to edit "aligngroup" to do this, e.g. run it with aligngroup="ytri", then change it to aligngroup="ypB" and repeat.) Then run the rest of the script. This will also make a nice little scene with all yeast active sites superimposed.

Like this: 
![Yeast active sites](https://github.com/maxewilkinson/Spliceosome-PyMOL-sessions/blob/master/yeast_activesites.png)

See also this very nice collection https://github.com/mmagnus/PyMOL4Spliceosome
