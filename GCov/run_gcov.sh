./../TestSamples/detect-camera 0

./../TestSamples/detect-image ../TestSamples/image-test.jpg

lcov --rc lcov_branch_coverage=1 -c -d ../TestSamples/ -o coverage-detect.info

genhtml --rc lcov_branch_coverage=1 -o Reports coverage-detect.info

firefox Reports/index.html
