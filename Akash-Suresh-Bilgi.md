### Name: Akash Suresh Bilgi

SID : 862395080 | Email: abilg003@ucr.edu

## Answer the following questions:



1. How many total thread blocks do we use?

   **My solution:**

        I used 1024 threads for each block (my solution)
        blocks = (dim*dim + threads - 1) / threads;

        so,
        threads = 1024 and 
        dim = 1000

        block = (1000*1000 + 1024 - 1) / 1024 = 977 ( int format )

   **=> So I used *977* blocks**

   -------------------------------
   

2. Are all thread blocks full? That is, do all threads in the thread block have data to operate on?
   
   **=> No**, *all thread blocks arent used*

   **My Solution:**

         total threads allocated = 977 * 1024 = 10,00,448
         
         we use 10,00,000 threads in our example

         remaining threads => 10,00,448 - 10,00,000 = 448
         
         that means 448 threads remain unused in the 977th Block

--------------------------------------------------------------
   


3. How can this basic Matrix Addition program be improved? (What changes do you think can be made to speed up the code?)
        
        Using shared and constant memory to allocate data might help improve the speed of the matrix addition program
        [Reference: https://www.paranumal.com/single-post/2018/02/26/basic-gpu-optimization-strategies#:~:text=Constant%20memory%20is%20cached%20to,all%20threads%20in%20a%20threadblock ]


        Further:
        1. I can use 16 threads to get an exact of 1000*1000 threads
                explaination : 1000*1000 +16 -1 / 16 = 65000
            so 
                65000 *16 = 10,00,000 
        2. ( even with 32 threads it gives the same result as 16 threads hence all warps are filled )
                
--------------------------------------------------------------

        
