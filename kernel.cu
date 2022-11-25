#include <stdio.h>

#define TILE_SIZE 16

__global__ void matAdd(int dim, const float *A, const float *B, float* C) {

    /********************************************************************
     *
     * Compute C = A + B
     *   where A is a (dim x dim) matrix
     *   where B is a (dim x dim) matrix
     *   where C is a (dim x dim) matrix
     *
     ********************************************************************/

    /*************************************************************************/
    // INSERT KERNEL CODE HERE
    // Calculate global thread ID
    int tid = (blockIdx.x * blockDim.x) + threadIdx.x;

    // Boundary check
    if (tid < dim) C[tid] = A[tid] + B[tid];

        
    /*************************************************************************/

}

void basicMatAdd(int dim, const float *A, const float *B, float *C)
{
    // Initialize thread block and kernel grid dimensions ---------------------

    const unsigned int BLOCK_SIZE = TILE_SIZE;
	
    /*************************************************************************/
    //INSERT CODE HERE
    /*************************************************************************/
	//dim3 grid(dim,dim);	
    // 
    // 
    int num_thrd = 1 << 10; //1024
    int num_blk = (dim*dim + num_thrd - 1) / num_thrd;


    // Invoke CUDA kernel -----------------------------------------------------
    matAdd<<<num_blk, num_thrd >>>(dim*dim, A, B, C);
    /*************************************************************************/
    //INSERT CODE HERE
	
    /*************************************************************************/

}

