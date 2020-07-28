#include <iostream>
#include <hls_video.h>

#include "opencv2/opencv.hpp"

using namespace std;
using namespace cv;

int main(){


    Mat input_image = imread("C:\\Users\\ASUS\\Desktop\\sem 5 project\\ImageStitcherSIFT\\Data_FPGA\\left_r.jpg", CV_LOAD_IMAGE_COLOR);

    if(!input_image.data )                              // Check for invalid input
    {
       cout <<  "Could not open or find the image" << std::endl ;
      return -1;
    }

    namedWindow( "Display window", WINDOW_AUTOSIZE );// Create a window for display.
    imshow( "Display window", input_image );                   // Show our image inside it.


    waitKey(0);
	cout<<("Hello world");

	return 0;
}




