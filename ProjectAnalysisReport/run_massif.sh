# Pokretanje Massifa za detect-camera

valgrind --tool=massif --stacks=yes --massif-out-file="massif-detect-camera.txt" ./../TestSamples/detect-camera 0
ms_print massif-detect-camera.txt > massif-detect-camera-msprint.txt

valgrind --tool=massif --stacks=yes --massif-out-file="massif-detect-image.txt" ./../TestSamples/detect-image ../TestSamples/image-test.jpg
ms_print massif-image-camera.txt > massif-image-camera-msprint.txt

#za Pokretanje massif-visualizera otkomentarisati naredne linije:
massif-visualizer massif-detect-image.txt
massif-visualizer massif-detect-camera.txt
