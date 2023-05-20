#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>





unsigned int byString(unsigned int i)
{
	unsigned int retval;
	int len = snprintf( NULL, 0, "%d", i );
	retval = ((len&1) == 0)? i : 0;
	return retval;
}



int main()
{

	FILE *fp;
        const unsigned int NUM_READ =30000;
	unsigned int i[NUM_READ];
	unsigned int b,c,num;

	fp=fopen("integers.bin", "rb");
	   fread(i,sizeof(unsigned int) * NUM_READ,1,fp);
           clock_t begin = clock();
	   for (int y=0;y<NUM_READ; y++)
	   {
		c++;
		 b = byString(i[y]);
		if (b>>0)
		{
			num++;
			printf("%d \n",b);
		}
	   }
	clock_t end = clock();
	double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
	printf("%d Even Digit Numbers of %d Counted",num,c);
	printf("Time Spent : %f\n\n",time_spent);
	fclose(fp);

}
