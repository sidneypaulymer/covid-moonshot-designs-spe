#!/bin/zsh

declare -A compounds
compounds=( [0081]=S81 [0082]=S82 [0083]=S83 [0084]=S84 [0085]=S85 [0086]=S86 [0087]=S87 [0088]=S88 [0089]=S89 )

echo "source leaprc.protein.ff19SB"
echo "source leaprc.gaff2"
echo "set default PBradii mbondi3"
echo "loadoff x1093_carbamate_linker.lib"
echo
echo "prot = loadpdb ../Mpro-x1093.pdb"
echo "saveamberparm prot Mpro-x1093.prmtop Mpro-x1093.inpcrd"
echo "savepdb prot Mpro-x1093-out.pdb"
echo

for mol id in ${(kv)compounds}; do
    echo "# === SPE_${mol} :: $id ==="
    echo "loadamberparams SPE_${mol}.frcmod"
    echo "saveamberparm $id SPE_${mol}.prmtop SPE_${mol}.inpcrd"
    echo "savemol2 $id SPE_${mol}-out.mol2 1"
    echo
    echo "comp_$id = combine { prot $id }"
    echo "saveamberparm comp_$id comp-SPE_${mol}.prmtop comp-SPE_${mol}.inpcrd"
    echo "savepdb comp_$id comp-SPE_${mol}-out.pdb"
    echo "\n\n"
done

echo "quit"
