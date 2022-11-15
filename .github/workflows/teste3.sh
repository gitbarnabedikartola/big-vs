#!/bin/bash
#           #frame inicial
#           startframe=0
#           #frame final
#           endframe=3000
#           #numero de divisões do projeto
#           divisor=3
#           #numero total de frames do projeto
#           totalframes=$["$endframe" - "$startframe"]
#           #numero de frames por seguimento 
#           xframe=$["$totalframes" / "$divisor"]
#           #gerar lista com os numeros de frames iniciais e finais
#           for (( x=1; x<="$divisor"; x++ )); do  
#               fend=$["$xframe" * "$x"]
#               fstart=$["$fend" - "$xframe" + "1"]
#               divframes="-s $fstart -e $fend"
#               matrix="${matrix}, $divframes"
#               # echo "matrixx=$matrix" >> $GITHUB_ENV
#           done
#               echo $matrix | sed 's/^, //'
cd ../..
totalframes=$(blender -b big-vs-ubuntu.blend -S 03-montagem -P frames.py | grep frames | cut -d "=" -f2)
startframe=$(blender -b big-vs-ubuntu.blend -S 03-montagem -P frames.py | grep frames | sed 's/^.*frames: //' | cut -d " " -f1 | awk -F\. '{print $1}')
endframe=$(blender -b big-vs-ubuntu.blend -S 03-montagem -P frames.py | grep frames | sed 's/^.*frames: //' | cut -d " " -f1 | awk -F\. '{print $3}')

echo $totalframes
echo $startframe
echo $endframe
