#ifndef _WARPPERSPECTIVE_ACCEL_H
#define _WARPPERSPECTIVE_ACCEL_H

#include "ap_int.h"
#include "hls_stream.h"


#include "C:/Users/ASUS/AppData/Roaming/Xilinx/Vivado/arrayFAST/.lib/include/common/xf_common.h"
#include "C:/Users/ASUS/AppData/Roaming/Xilinx/Vivado/arrayFAST/.lib/include/common/xf_utility.h"
#include "C:/Users/ASUS/AppData/Roaming/Xilinx/Vivado/arrayFAST/.lib/include/common/xf_infra.h"
#include "C:/Users/ASUS/AppData/Roaming/Xilinx/Vivado/arrayFAST/.lib/include/imgproc/xf_warp_transform.hpp"


#define HEIGHT 1080
#define WIDTH 1920


#define STORE_LINES 100
#define START_ROW 50
#define TRANSFORM 1
#define INTERPOLATION_TYPE 1
#define TYPE 0
#define USE_URAM false



void warp_stream_accel(hls::stream< ap_axiu<8,1,1,1> >& _src,hls::stream< ap_axiu<8,1,1,1> >& _dst,int height,int width, float R[9]);


#endif //_WARPPERSPECTIVE_ACCEL_H
