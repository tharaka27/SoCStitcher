

#include <iostream>
#include <math.h>
#include "gussian_elimination.h"
#include "homography.h"

void gaussian_eliminatio(float* input, int n) {

	float* A = input;
	int i = 0;
	int j = 0;
	int m = n - 1;
	while (i < m && j < n) {
		// Find pivot in column j, starting in row i:
		int maxi = i;
		for (int k = i + 1; k < m; k++) {
			if (fabs(A[k * n + j]) > fabs(A[maxi * n + j])) {
				maxi = k;
			}
		}
		if (A[maxi * n + j] != 0) {
			//swap rows i and maxi, but do not change the value of i
			if (i != maxi)
				for (int k = 0; k < n; k++) {
					float aux = A[i * n + k];
					A[i * n + k] = A[maxi * n + k];
					A[maxi * n + k] = aux;
				}
			//Now A[i,j] will contain the old value of A[maxi,j].
			//divide each entry in row i by A[i,j]
			float A_ij = A[i * n + j];
			for (int k = 0; k < n; k++) {
				A[i * n + k] /= A_ij;
			}
			//Now A[i,j] will have the value 1.
			for (int u = i + 1; u < m; u++) {
				//subtract A[u,j] * row i from row u
				float A_uj = A[u * n + j];
				for (int k = 0; k < n; k++) {
					A[u * n + k] -= A_uj * A[i * n + k];
				}
				//Now A[u,j] will be 0, since A[u,j] - A[i,j] * A[u,j] = A[u,j] - 1 * A[u,j] = 0.
			}

			i++;
		}
		j++;
	}

	//back substitution
	for (int i = m - 2; i >= 0; i--) {
		for (int j = i + 1; j < n - 1; j++) {
			A[i * n + m] -= A[i * n + j] * A[j * n + m];
			//A[i*n+j]=0;
		}
	}
}


void gussian_elimination_test(){
	float P[8][9] = {
					{1,1,0,0,0,0,0,0,2}, // h11
					{0,1,1,0,0,0,0,0,3}, // h12
					{0,0,1,0,0,0,0,0,0}, // h13
					{0,0,0,1,0,0,0,0,5},
					{0,0,0,0,1,0,0,0,0},
					{0,0,1,0,0,1,0,0,4},
					{0,1,0,0,0,0,1,0,0},
					{1,0,0,0,0,0,0,1,0}
					};

	  gaussian_eliminatio(&P[0][0], 9);
	  for(int i=0; i <8;i++){
		  for(int j = 0;j< 9; j++){
			  std::cout << P[i][j] << " ";
		  }
		  std::cout << "\n";
	  }


	  float Q[8][9] = {
				{1,1,0,0,0,0,0,0,2}, // h11
				{0,1,1,0,0,0,0,0,3}, // h12
				{0,0,1,0,0,0,0,0,0}, // h13
				{0,0,0,1,0,0,0,0,5},
				{0,0,0,0,1,0,0,0,0},
				{0,0,1,0,0,1,0,0,4},
				{0,1,0,0,0,0,1,0,0},
				{1,0,0,0,0,0,0,1,0}
	  				};

	  gaussian_elimination_accel(&Q[0][0], 9);

	  for(int i=0; i <8;i++){
	 	  for(int j = 0;j< 9; j++){
	 		  std::cout << Q[i][j] << " ";
	 	  }
	 	  std::cout << "\n";
	   }

	  float difference = 0 ;
	  for(int i=0; i <8;i++){
	   	  for(int j = 0;j< 9; j++){
	   		  difference += P[i][j]-Q[i][j];
	   	  }
	  }

	  std::cout<< "difference between two matrices " << difference << std::endl;

}

void homography(point_t src[4], point_t dst[4], float homo_mat[9]){

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

		gaussian_eliminatio(&P[0][0], 9);

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




void homography_test(){

	point_t src[4];
	point_t dst[4];

	//
	//       Dataset 1
	//
	src[0].x = 141;
	src[0].y = 131;
	src[1].x = 480;
	src[1].y = 159;
	src[2].x = 493;
	src[2].y = 630;
	src[3].x = 64;
	src[3].y = 601;


	dst[0].x = 318;
	dst[0].y = 256;
	dst[1].x = 534;
	dst[1].y = 372;
	dst[2].x = 316;
	dst[2].y = 670;
	dst[3].x = 73;
	dst[3].y = 473;


	//src[1] = point_t(480, 159);
	//src[2] = point_t(493, 630);
	//src[3] = point_t(64, 601);

	//dst[0] = point_t(318, 256);
	//dst[1] = point_t(534, 372);
	//dst[2] = point_t(316, 670);
	//dst[3] = point_t(73, 473);

	for(int i=0;i<4;i++){
		std::cout << src[i].x << " " << src[i].y << std::endl  ;
	}

	float homo_mat[9];
	findHomography_accel(src, dst, homo_mat);

	for(int i=0;i<9;i++){
		std::cout << homo_mat[i]  << " " ;
		if(i%3 == 2){
			std::cout << "\n";
		}
	}

	float homo_mat_noaccel[9];
	homography(src, dst, homo_mat_noaccel);

	for(int i=0;i<9;i++){
		std::cout << homo_mat_noaccel[i]  << " " ;
		if(i%3 == 2){
			std::cout << "\n";
		}
	}
	float difference = 0 ;
	for(int i=0; i <9;i++){
		difference += homo_mat[i]-homo_mat_noaccel[i];
	}

    std::cout<< "difference between two matrices " << difference << std::endl;

}


int main(){

	homography_test();
  //gussian_elimination_test();

  return 0;
}


/*
int main(){

	int A[5] = {1,2,3,4,5};
	simplearray(A);
	for (int i = 0; i <5; i++) {
	   std::cout << A[i] << " ";
	}

}
*/
