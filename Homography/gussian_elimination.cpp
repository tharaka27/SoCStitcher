#include "hls_math.h"

void gaussian_elimination_accel(float *input, int n) {
#pragma HLS INTERFACE s_axilite port=n
#pragma HLS INTERFACE ap_memory port=input
#pragma HLS INTERFACE s_axilite port=return


	float* A = input;
	int i = 0;
	int j = 0;
	n = 9;
	int m = n - 1;
	while (i < m && j < n) {
#pragma HLS loop_tripcount MAX=72 MIN=9

		// Find pivot in column j, starting in row i:
		int maxi = i;
		for (int k = i + 1; k < m; k++) {
#pragma HLS loop_tripcount MAX=8

			if (fabs(A[k * n + j]) > fabs(A[maxi * n + j])) {
				maxi = k;
			}
		}
		if (A[maxi * n + j] != 0) {
			//swap rows i and maxi, but do not change the value of i
			if (i != maxi)
				for (int k = 0; k < n; k++) {
#pragma HLS loop_tripcount MAX=9
					float aux = A[i * n + k];
					A[i * n + k] = A[maxi * n + k];
					A[maxi * n + k] = aux;
				}
			//Now A[i,j] will contain the old value of A[maxi,j].
			//divide each entry in row i by A[i,j]
			float A_ij = A[i * n + j];
			for (int k = 0; k < n; k++) {
#pragma HLS loop_tripcount MAX=9
#pragma HLS unroll
				A[i * n + k] /= A_ij;
			}
			//Now A[i,j] will have the value 1.
			for (int u = i + 1; u < m; u++) {
#pragma HLS loop_tripcount MAX=8
				//subtract A[u,j] * row i from row u
				float A_uj = A[u * n + j];
				for (int k = 0; k < n; k++) {
#pragma HLS loop_tripcount MAX=9
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
#pragma HLS loop_tripcount MAX=8
		for (int j = i + 1; j < n - 1; j++) {
#pragma HLS loop_tripcount MAX=9
			A[i * n + m] -= A[i * n + j] * A[j * n + m];
			//A[i*n+j]=0;
		}
	}
}
