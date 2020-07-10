#ifndef _HOMOGRAPHY_H_
#define _HOMOGRAPHY_H_

typedef struct point{
	float x , y;
} point_t;


void findHomography_accel(point_t src[4], point_t dst[4], float homo_mat[9]);


#endif //_HOMOGRAPHY_H_
