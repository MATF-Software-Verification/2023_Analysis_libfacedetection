cppcheck --enable=all --output-file="cppCheckOut.xml" --xml --inconclusive ../libfacedetection/

cppcheck-htmlreport --report-dir=CppCheckReport --file="cppCheckOut.xml" 
