!/bin/bash
          #frame inicial
          startframe=50
          #frame final
          endframe=3050
          #numero de divisões do projeto
          divisor=5
          #numero total de frames do projeto
          totalframes=$["$endframe" - "$startframe"] #3000
          #numero de frames por seguimento 
          xframe=$["$totalframes" / "$divisor"]
          #gerar lista com os numeros de frames iniciais e finais
          for (( x="$divisor"; x>=1; x-- )); do
              fstart=$["$xframe" * "$x" - "1" - "$endframe"]
              fend=$["$xframe" - "$fstart" - 1]
              if [ "$x" = "$divisor" ]; then
                fstart=$["$fstart" + "1"]
              fi
              divframes="-s $fstart -e $fend"
              matrix="${matrix}, $divframes"
              # echo "matrixx=$matrix" >> $GITHUB_ENV
          done
              echo $matrix | sed 's/^, //'
# cd ../..
# totalframes=$(blender -b big-vs-ubuntu.blend -S 03-montagem -P frames.py | grep frames | cut -d "=" -f2)
# startframe=$(blender -b big-vs-ubuntu.blend -S 03-montagem -P frames.py | grep frames | sed 's/^.*frames: //' | cut -d " " -f1 | awk -F\. '{print $1}')
# endframe=$(blender -b big-vs-ubuntu.blend -S 03-montagem -P frames.py | grep frames | sed 's/^.*frames: //' | cut -d " " -f1 | awk -F\. '{print $3}')
# 
# echo $totalframes
# echo $startframe
# echo $endframe
