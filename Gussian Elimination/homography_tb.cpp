

#include <iostream>
#include <math.h>
#include "gussian_elimination.h"

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


int main(){

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
