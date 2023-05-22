#include <stdio.h>
#include <math.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include "cTest.h"




int main()
{

        FILE *fp;
        const unsigned int NUM_READ =30000;
        unsigned int i[NUM_READ];
        unsigned int b,c,num;
	double total_perf;
        fp=fopen("integers.bin", "rb");
        fread(i,sizeof(unsigned int) * NUM_READ,1,fp);
        fclose(fp);

// byString
	total_perf = 0;
	for (int z=1;z<=100;z++)
	{
		clock_t begin = clock();
	           for (int y=0;y<NUM_READ; y++)
	           {
			c++;
	                 b = byString(i[y]);
	                if (b>>0)
	                {
				num++;
//	                        printf("%d \n",b);
	                }
	           }
	        clock_t end = clock();
	        double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
		total_perf += time_spent;
	}
	printf("C : byString : Total: %f : Average: %f\n",total_perf,(total_perf/100));

// byLog10
	total_perf = 0;
	for (int z=1;z<=100;z++)
	{
		clock_t begin = clock();
	           for (int y=0;y<NUM_READ; y++)
	           {
			c++;
	                 b = byLog10(i[y]);
	                if (b>>0)
	                {
				num++;
//	                        printf("%d \n",b);
	                }
	           }
	        clock_t end = clock();
	        double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
		total_perf += time_spent;
	}
	printf("C : byLog10 : Total: %f : Average: %f\n",total_perf,(total_perf/100));

// byDivision
	total_perf = 0;
	for (int z=1;z<=100;z++)
	{
		clock_t begin = clock();
	           for (int y=0;y<NUM_READ; y++)
	           {
			c++;
	                 b = byDivision(i[y]);
	                if (b>>0)
	                {
				num++;
//	                        printf("%d \n",b);
	                }
	           }
	        clock_t end = clock();
	        double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
		total_perf += time_spent;
	}
	printf("C : byDivision : Total: %f : Average: %f\n",total_perf,(total_perf/100));

// byRecursiveDiv
	total_perf = 0;
	for (int z=1;z<=100;z++)
	{
		clock_t begin = clock();
	           for (int y=0;y<NUM_READ; y++)
	           {
			c++;
	                 b = byRecursiveDiv(i[y]);
	                if (b>>0)
	                {
				num++;
//	                        printf("%d \n",b);
	                }
	           }
	        clock_t end = clock();
	        double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
		total_perf += time_spent;
	}
	printf("C : byRecursiveDiv : Total: %f : Average: %f\n",total_perf,(total_perf/100));

// By NewLog10
// byRecursiveDiv
	total_perf = 0;
	for (int z=1;z<=100;z++)
	{
		clock_t begin = clock();
	           for (int y=0;y<NUM_READ; y++)
	           {
			c++;
	                 b = byNewLog10(i[y]);
	                if (b>>0)
	                {
				num++;
//	                        printf("%d \n",b);
	                }
	           }
	        clock_t end = clock();
	        double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
		total_perf += time_spent;
	}
	printf("C : byNewLog10 : Total: %f : Average: %f\n",total_perf,(total_perf/100));

}
