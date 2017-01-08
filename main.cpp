#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include "opencv2/imgproc.hpp"
#include <iostream>

using namespace cv;
using namespace std;

int main(  )
{
    Mat image;
    image = imread("/home/prabindh/Downloads/InvitationMoT.jpg", CV_LOAD_IMAGE_COLOR);   

    if(! image.data )                       
    {
        cout <<  "Could not open or find the image" << std::endl ;
        return -1;
    }

    namedWindow( "Display window", WINDOW_AUTOSIZE );// Create a window for display.
    imshow( "Display window", image );             

    waitKey(0);                                      
    return 0;
}
