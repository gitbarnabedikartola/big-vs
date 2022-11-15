#!/bin/bash
          #frame inicial
          startframe=0
          #frame final
          endframe=3000
          #numero de divisões do projeto
          divisor=3
          #numero total de frames do projeto
          totalframes=$["$endframe" - "$startframe"]
          #numero de frames por seguimento 
          xframe=$["$totalframes" / "$divisor"]
          #gerar lista com os numeros de frames iniciais e finais
          for (( x=1; x<="$divisor"; x++ )); do  
              fend=$["$xframe" * "$x"]
              fstart=$["$fend" - "$xframe" + "1"]
              divframes="-s $fstart -e $fend"
              matrix="${matrix}, $divframes"
              # echo "matrixx=$matrix" >> $GITHUB_ENV
              echo $matrix
          done
