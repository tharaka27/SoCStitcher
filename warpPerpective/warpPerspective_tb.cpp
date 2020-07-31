#include <iostream>
//#include <hls_video.h>
#include "hls_stream.h"


//#include "opencv2/opencv.hpp"
#include "opencv2/opencv.hpp"
#include "common/xf_sw_utils.h"

#include "warpPerspective_accel.h"

#include "common/xf_sw_utils.h"
#include "common/xf_axi.h"

int main(){

/*
    Mat input_image = imread("C:\\Users\\ASUS\\Desktop\\sem 5 project\\ImageStitcherSIFT\\Data_FPGA\\left_r.jpg", 0);
    if(!input_image.data )
    {
       cout <<  "Could not open or find the image" << std::endl ;
      return -1;
    }

    namedWindow( "Display window", WINDOW_AUTOSIZE );
    Mat H = (Mat_<double>(3, 3) << 1, 0, 0, 0,1, 0, 0, 0, 1);
    Mat output_image;
    warpPerspective(input_image, output_image, H, cv::Size(input_image.cols, input_image.rows));
    imshow( "Display window", output_image );
    waitKey(0);
*/


    cv::VideoCapture cap("C:\\Users\\ASUS\\Desktop\\roadr.wmv");
    if (!cap.isOpened())
    {
        std::cout << "!!! Failed to open file: " << std::endl;
        return -1;
    }

    cv::Mat frame;
    int i = 0;
    for(;;)
    {
    	i++;

        if (!cap.read(frame))
            break;


        cv::Mat H = (cv::Mat_<double>(3, 3) << 1, 1, 0, 0,1, 0, 0, 0, 1);
        cv::Mat output_image, output_image_accel;

        cv::Mat frame_gray;
        cv::cvtColor(frame, frame_gray, 0);
        warpPerspective(frame_gray, output_image, H, cv::Size(frame.cols, frame.rows));







        float R[9] = { 1, 1, 0, 0, 1, 0, 0, 0, 1};

        //cout<< "rows: " << frame.rows << " columns: " << frame.cols << endl;
        //-----------------------------------------------------
        //       Convert cv::Mat to xf::Mat
        //-----------------------------------------------------
        //xf::Mat<XF_8UC3, HEIGHT, WIDTH, NPC1> imgInput(frame.rows,frame.cols);
        //xf::Mat<XF_8UC3, HEIGHT, WIDTH, NPC1> imgOutput(frame.rows,frame.cols);
        xf::Mat<XF_8UC1, 360, 640, XF_NPPC1> imgInput(frame.rows,frame.cols);
        xf::Mat<XF_8UC1, 360, 640, XF_NPPC1> imgOutput(frame.rows,frame.cols);

        imgInput.copyTo(frame_gray.data);


        //warpPerspective_accel(imgInput, imgOutput , R);
        //xf::warpTransform<100, 50, 1, 1, 0, 360, 640, XF_NPPC1, false>(imgInput, imgOutput, R);


        ////-----------------------------------------------------
        ////       Convert to Stream
        ////-----------------------------------------------------
        hls::stream< ap_axiu<8,1,1,1> > _src,_dst;
        cvMat2AXIvideoxf<XF_NPPC1,8>(frame_gray, _src);
        //ip_accel_app(_src,_dst, frame.rows, frame.cols, R);
        //AXIvideo2cvMatxf<XF_NPPC1>(_dst, output_image_accel);


        cv::Mat diff(360, 640, CV_8UC1);
        cv::Mat zero(360, 640, CV_8UC1, 255);
        //xf::absDiff(zero, imgOutput, diff);


        cv::imshow("window", diff);
        cv::imshow("window2", output_image);

        //xf::imwrite("output.jpg", imgOutput);


        cv::imshow("window2", output_image);
        char key = cv::waitKey(10);
        if (key == 27) // ESC
            break;

        //if(i==4)
        //	break;
    }



	std::cout<<("Hello world");
	return 0;
}




