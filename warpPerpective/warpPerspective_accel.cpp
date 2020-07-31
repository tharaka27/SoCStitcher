#include "warpPerspective_accel.h"

void warp_stream_accel(hls::stream< ap_axiu<8,1,1,1> >& _src,hls::stream< ap_axiu<8,1,1,1> >& _dst, float R[9]){
#pragma HLS INTERFACE axis register both  port=_src
#pragma HLS INTERFACE axis register both  port=_dst

	 //xf::Mat<TYPE, HEIGHT, WIDTH, XF_NPPC1> imgInput1(height,width);
	 //xf::Mat<TYPE, HEIGHT, WIDTH, XF_NPPC1> imgOutput1(height,width);
	xf::Mat<XF_8UC1, HEIGHT, WIDTH, XF_NPPC1> imgInput1;
	xf::Mat<XF_8UC1, HEIGHT, WIDTH, XF_NPPC1> imgOutput1;


#pragma HLS stream variable=imgInput1.data dim=1 depth=1
#pragma HLS stream variable=imgOutput1.data dim=1 depth=1


	#pragma HLS dataflow

	xf::AXIvideo2xfMat(_src, imgInput1);
	//warpPerspective_accel(imgInput1,imgOutput1, R);
	xf::warpTransform<STORE_LINES, START_ROW, TRANSFORM, INTERPOLATION_TYPE, TYPE, HEIGHT, WIDTH, XF_NPPC1, USE_URAM>(imgInput1,imgOutput1, R);

	xf::xfMat2AXIvideo(imgOutput1, _dst);



}



