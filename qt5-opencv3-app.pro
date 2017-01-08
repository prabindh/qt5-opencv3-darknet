#############################################################################
##
## Makefile to integrate 3 key pieces of a typical system
##
##   1. Darknet/Yolo
##   2. Opencv3
##   3. Qt5
##
## Requires darknet-cpp port (atleast tag 3.75)
## https://github.com/prabindh/darknet/tree/v3.75
##
## Note: Darknet core is to be built as a shared lib (libdarknet-cpp-shared.so)
##
###############################################################################

QT += core
QT -= gui

CONFIG += c++11

TARGET = qt5_opencv3_darknet
CONFIG += console
CONFIG -= app_bundle

INCLUDEPATH += /home/prabindh/work-2016/darknet-cpp/darknet/src/

LIBS += \ 
    -L/usr/local/lib  \
    -lopencv_cudabgsegm -lopencv_cudaobjdetect -lopencv_cudastereo -lopencv_shape -lopencv_stitching -lopencv_cudafeatures2d -lopencv_superres -lopencv_cudacodec -lopencv_videostab -lopencv_cudaoptflow -lopencv_cudalegacy -lopencv_calib3d -lopencv_features2d -lopencv_objdetect -lopencv_highgui -lopencv_videoio -lopencv_photo -lopencv_imgcodecs -lopencv_cudawarping -lopencv_cudaimgproc -lopencv_cudafilters -lopencv_video -lopencv_ml -lopencv_imgproc -lopencv_flann -lopencv_cudaarithm -lopencv_viz -lopencv_core -lopencv_cudev \
    -L/home/prabindh/work-2016/darknet-cpp/darknet -ldarknet-cpp-shared \
    -L/usr/local/cuda/lib64 -lcuda -lcudart -lcublas -lcurand


TEMPLATE = app

SOURCES += darknet.cpp
