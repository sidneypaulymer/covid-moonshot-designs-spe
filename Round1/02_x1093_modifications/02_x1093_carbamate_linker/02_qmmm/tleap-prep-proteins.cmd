source leaprc.protein.ff19SB
source leaprc.gaff2
set default PBradii mbondi3
loadoff x1093_carbamate_linker.lib

prot = loadpdb ../Mpro-x1093.pdb
saveamberparm prot Mpro-x1093.parm7 Mpro-x1093.rst7
savepdb prot Mpro-x1093-out.pdb



# === SPE_0088 :: S88 ===
loadamberparams SPE_0088.frcmod
saveamberparm S88 SPE_0088.parm7 SPE_0088.rst7
savemol2 S88 SPE_0088-out.mol2 1

comp_S88 = combine { prot S88 }
saveamberparm comp_S88 comp-SPE_0088.parm7 comp-SPE_0088.rst7
savepdb comp_S88 comp-SPE_0088-out.pdb



# === SPE_0089 :: S89 ===
loadamberparams SPE_0089.frcmod
saveamberparm S89 SPE_0089.parm7 SPE_0089.rst7
savemol2 S89 SPE_0089-out.mol2 1

comp_S89 = combine { prot S89 }
saveamberparm comp_S89 comp-SPE_0089.parm7 comp-SPE_0089.rst7
savepdb comp_S89 comp-SPE_0089-out.pdb



# === SPE_0081 :: S81 ===
loadamberparams SPE_0081.frcmod
saveamberparm S81 SPE_0081.parm7 SPE_0081.rst7
savemol2 S81 SPE_0081-out.mol2 1

comp_S81 = combine { prot S81 }
saveamberparm comp_S81 comp-SPE_0081.parm7 comp-SPE_0081.rst7
savepdb comp_S81 comp-SPE_0081-out.pdb



# === SPE_0082 :: S82 ===
loadamberparams SPE_0082.frcmod
saveamberparm S82 SPE_0082.parm7 SPE_0082.rst7
savemol2 S82 SPE_0082-out.mol2 1

comp_S82 = combine { prot S82 }
saveamberparm comp_S82 comp-SPE_0082.parm7 comp-SPE_0082.rst7
savepdb comp_S82 comp-SPE_0082-out.pdb



# === SPE_0083 :: S83 ===
loadamberparams SPE_0083.frcmod
saveamberparm S83 SPE_0083.parm7 SPE_0083.rst7
savemol2 S83 SPE_0083-out.mol2 1

comp_S83 = combine { prot S83 }
saveamberparm comp_S83 comp-SPE_0083.parm7 comp-SPE_0083.rst7
savepdb comp_S83 comp-SPE_0083-out.pdb



# === SPE_0084 :: S84 ===
loadamberparams SPE_0084.frcmod
saveamberparm S84 SPE_0084.parm7 SPE_0084.rst7
savemol2 S84 SPE_0084-out.mol2 1

comp_S84 = combine { prot S84 }
saveamberparm comp_S84 comp-SPE_0084.parm7 comp-SPE_0084.rst7
savepdb comp_S84 comp-SPE_0084-out.pdb



# === SPE_0085 :: S85 ===
loadamberparams SPE_0085.frcmod
saveamberparm S85 SPE_0085.parm7 SPE_0085.rst7
savemol2 S85 SPE_0085-out.mol2 1

comp_S85 = combine { prot S85 }
saveamberparm comp_S85 comp-SPE_0085.parm7 comp-SPE_0085.rst7
savepdb comp_S85 comp-SPE_0085-out.pdb



# === SPE_0086 :: S86 ===
loadamberparams SPE_0086.frcmod
saveamberparm S86 SPE_0086.parm7 SPE_0086.rst7
savemol2 S86 SPE_0086-out.mol2 1

comp_S86 = combine { prot S86 }
saveamberparm comp_S86 comp-SPE_0086.parm7 comp-SPE_0086.rst7
savepdb comp_S86 comp-SPE_0086-out.pdb



# === SPE_0087 :: S87 ===
loadamberparams SPE_0087.frcmod
saveamberparm S87 SPE_0087.parm7 SPE_0087.rst7
savemol2 S87 SPE_0087-out.mol2 1

comp_S87 = combine { prot S87 }
saveamberparm comp_S87 comp-SPE_0087.parm7 comp-SPE_0087.rst7
savepdb comp_S87 comp-SPE_0087-out.pdb



quit
