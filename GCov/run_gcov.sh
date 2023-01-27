cp ../libfacedetection/src/facedetectcnn.h ../TestSamples/facedetectcnn.h

cp ../libfacedetection/build/facedetection_export.h ../TestSamples/facedetection_export.h

g++ -std=c++17 -g --coverage -O0 -Wall -o detect-camera ../TestSamples/detect-camera.cpp ../libfacedetection/src/facedetectcnn.cpp ../libfacedetection/src/facedetectcnn-data.cpp ../libfacedetection/src/facedetectcnn-model.cpp `pkg-config --libs --cflags opencv4`

g++ -std=c++17 -g --coverage -O0 -Wall -o detect-image ../libfacedetection/example/detect-image.cpp ../libfacedetection/src/facedetectcnn.cpp ../libfacedetection/src/facedetectcnn-data.cpp ../libfacedetection/src/facedetectcnn-model.cpp `pkg-config --libs --cflags opencv4`

./detect-camera 0

./detect-image ../TestSamples/image-test.jpg

lcov --rc lcov_branch_coverage=1 -c -d . -o coverage-detect.info

genhtml --rc lcov_branch_coverage=1 -o Reports coverage-detect.info

firefox Reports/index.html
