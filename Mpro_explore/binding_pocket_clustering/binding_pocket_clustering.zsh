#!/bin/zsh

#echo "match #0:45,46,49,142,189 #1:45,46,49,142,189" > chimera_clustering.cmd

# try something to remove alternative conformations; worked!!
#cat - <<- CHIMERA > chimera_clustering.cmd
#    delete @*.b
#    match #0:45,46,49,142,165,189 #1:45,46,49,142,165,189
#CHIMERA

cat - <<- CHIMERA > chimera_clustering.cmd
    delete @*.b
    match #0:24-27,41,44-46,49,119,142-145,164-165,187,189,140,163,166,167,168,192 #1:24-27,41,44-46,49,119,142-145,164-165,187,189,140,163,166,167,168,192
CHIMERA

for f1 in Mpro-x????_0/Mpro-x????_0_apo-desolv.pdb; do
    for f2 in Mpro-x????_0/Mpro-x????_0_apo-desolv.pdb; do
        if [[ $f1 < $f2 || $f1 == $f2 ]]; then
            continue
        fi

        echo $f1 $f2
        /Applications/Chimera.app/Contents/MacOS/chimera --nogui $f1 $f2 chimera_clustering.cmd
    done
done
