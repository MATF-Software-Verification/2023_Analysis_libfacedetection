cp ../libfacedetection/build/facedetection_export.h ../libfacedetection/src/facedetection_export.h
cp ../libfacedetection/build/facedetection_export.h facedetection_export.h

cp ../libfacedetection/src/facedetectcnn.h facedetectcnn.h

cp  facedetectcnn.h ../libfacedetection/example/facedetectcnn.h
cp  facedetection_export.h ../libfacedetection/example/facedetection_export.h


g++ -std=c++17 -g --coverage -O0 -Wall -o detect-camera detect-camera.cpp ../libfacedetection/src/facedetectcnn.cpp ../libfacedetection/src/facedetectcnn-data.cpp ../libfacedetection/src/facedetectcnn-model.cpp `pkg-config --libs --cflags opencv4`

g++ -std=c++17 -g --coverage -O0 -Wall -o detect-image ../libfacedetection/example/detect-image.cpp ../libfacedetection/src/facedetectcnn.cpp ../libfacedetection/src/facedetectcnn-data.cpp ../libfacedetection/src/facedetectcnn-model.cpp `pkg-config --libs --cflags opencv4`

