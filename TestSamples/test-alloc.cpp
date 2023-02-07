/*
*/


#include "../libfacedetection/src/facedetectcnn.h"

int main(int argc, char* argv[])
{
   
    size_t size = 1234;
   
    int* p = (int*)myAlloc(size);
    int* p1 = (int*)myAlloc(size);
    int* p2 = (int*)myAlloc(size);
    int* p3 = (int*)myAlloc(size);
    
    myFree(&p);
    myFree(&p1);
    myFree(&p2);
        
    int* p4 = (int*)myAlloc(size);
    int* p5 = (int*)myAlloc(size);
    
    myFree(&p3);
    myFree(&p5);
    myFree(&p4);
	return 0;
}
