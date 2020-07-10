
#include "homography.h"
#include "gussian_elimination.h"


void findHomography_accel(point_t src[4], point_t dst[4], float homo_mat[9]) {
#pragma HLS INTERFACE ap_memory port=src
#pragma HLS INTERFACE ap_memory port=dst
#pragma HLS INTERFACE ap_memory port=homo_mat
#pragma HLS INTERFACE s_axilite port=return

	float P[8][9] = {
			{-src[0].x, -src[0].y, -1,   0,   0,  0, src[0].x * dst[0].x, src[0].y * dst[0].x, -dst[0].x }, // h11
			{  0,   0,  0, -src[0].x, -src[0].y, -1, src[0].x * dst[0].y, src[0].y * dst[0].y, -dst[0].y }, // h12

			{-src[1].x, -src[1].y, -1,   0,   0,  0, src[1].x * dst[1].x, src[1].y * dst[1].x, -dst[1].x }, // h13
			{  0,   0,  0, -src[1].x, -src[1].y, -1, src[1].x * dst[1].y, src[1].y * dst[1].y, -dst[1].y }, // h21

			{-src[2].x, -src[2].y, -1,   0,   0,  0, src[2].x * dst[2].x, src[2].y * dst[2].x, -dst[2].x }, // h22
			{  0,   0,  0, -src[2].x, -src[2].y, -1, src[2].x * dst[2].y, src[2].y * dst[2].y, -dst[2].y }, // h23

			{-src[3].x, -src[3].y, -1,   0,   0,  0, src[3].x * dst[3].x, src[3].y * dst[3].x, -dst[3].x }, // h31
			{  0,   0,  0, -src[3].x, -src[3].y, -1, src[3].x * dst[3].y, src[3].y * dst[3].y, -dst[3].y }, // h32
	};

	gaussian_elimination_accel(&P[0][0], 9);

	//cv::Mat A = (cv::Mat_<double>(3, 3) << P[0][8], P[1][8], P[2][8], P[3][8], P[4][8], P[5][8], P[6][8], P[7][8], 1);
	homo_mat[0] = P[0][8];
	homo_mat[1] = P[1][8];
	homo_mat[2] = P[2][8];
	homo_mat[3] = P[3][8];
	homo_mat[4] = P[4][8];
	homo_mat[5] = P[5][8];
	homo_mat[6] = P[6][8];
	homo_mat[7] = P[7][8];
	homo_mat[8] = 1;


}
