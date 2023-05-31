#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include "quicksort.h"


int arraycpy(unsigned int arrayDest[],unsigned int arraySrc[],int size, int start,int step)
{
	printf("array copy start\n");
	int c=0;
	for(int i=start;i<start+step;i++)
	{

		arrayDest[c]=arraySrc[i];
		c++;
	}
	printf("array copy end\n");

}


int printArray(unsigned int arr[])
{
	for (int i=0; i < 10; i++)
	{
	  printf("%d\n", arr[i]);
	}
}

unsigned int sumArrayAverage(unsigned int* _arr, int size)
{
	//unsigned int[] arr = &_arr;
	unsigned int sum =0;
	for(int i=0; i <size; i++)
	{
		sum=sum + _arr[i];
	}
	return sum/size;
}


int main()
{


        FILE *fp;
        const unsigned int NUM_READ =1000;
        unsigned int i[NUM_READ];
        unsigned int b,c,num;
        double total_perf;
        unsigned int testArr[10];

	fp=fopen("1000integers.bin", "rb");
        fread(i,sizeof(unsigned int) * NUM_READ,1,fp);
        fclose(fp);

	unsigned int step = 10;
	c=0;
	for (unsigned int a=0;a<1000;a=a+10)
	{
	  unsigned int avg;
	  printf(" Array \n");
	  arraycpy(testArr,i,sizeof(unsigned int),a,step);
	  quickSort(testArr,0,9);
	  printArray(testArr);
	  avg=sumArrayAverage(testArr,10);
	  printf("average: %d\n",avg);
	  printf("\n\n");
	  c++;
	}

	return 0;
}
