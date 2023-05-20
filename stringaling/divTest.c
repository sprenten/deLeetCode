#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>



int numDigits(unsigned int i)
{
    if (i== 0)
        return 1;
    int count = 0;
    while (i != 0) {
        i = i / 10;
        ++count;
    }
    return count;
}

int recursion(unsigned int i)
{
    int n= i/10;
    if (n ==  0)
	return 1;
    return 1 + recursion(n);
}

unsigned int byDivision(unsigned int i)
{
	unsigned int retval;
//	int len = numDigits(i);
	int len = recursion(i);
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
                 b = byDivision(i[y]);
                if (b>>0)
                {
			num++;
                        printf("%d \n",b);
                }
           }
        clock_t end = clock();
        double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
	printf(" %d  Even Digit Numbers of %d Counted\n",num,c);
        printf("Time Spent : %f\n\n",time_spent);
        fclose(fp);

}
