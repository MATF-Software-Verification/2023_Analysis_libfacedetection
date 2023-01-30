valgrind -s --leak-check=full --log-file="memcheck-detect-image.txt" 
./../TestSamples/detect-image ../TestSamples/image-test.jpg

valgrind -s --leak-check=full --log-file="memcheck-detect-camera.txt" 
./../TestSamples/detect-camera 0
