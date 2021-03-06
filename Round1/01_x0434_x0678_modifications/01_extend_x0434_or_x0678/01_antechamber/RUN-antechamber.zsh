#!/bin/zsh
# 24-35 x0434
# 36-47 x0678

declare -A compounds
compounds=( [0024]=S24 [0025]=S25 [0026]=S26 [0027]=S27 [0028]=S28 [0029]=S29 [0030]=S30 [0031]=S31 [0032]=S32 [0033]=S33 [0034]=S34 [0035]=S35 \
            [0036]=S36 [0037]=S37 [0038]=S38 [0039]=S39 [0040]=S40 [0041]=S41 [0042]=S42 [0043]=S43 [0044]=S44 [0045]=S45 [0046]=S46 [0047]=S47 )

for mol id in ${(kv)compounds}; do
    echo "=== SPE_${mol} :: $id ==="
    antechamber -i ../SPE_${mol}.mol2 -fi mol2 -o SPE_${mol}a.mol2 -fo mol2 -c bcc -at gaff2 -pf yes -nc 0 -rn $id -dr no
    parmchk2 -i SPE_${mol}a.mol2 -f mol2 -o SPE_${mol}.frcmod -s 2
    echo "\n\n"
done
