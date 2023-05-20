#include <stdio.h>
#include <stdlib.h>


int main()
{
	FILE *fnt;
	FILE *fnb;
	unsigned int num, n, range;
	printf("Enter number of positive integer:");
	scanf("%d", &n);
	printf("Enter max integer:");
	scanf("%d", &range);
	fnt=fopen("integers.txt","w");
	fnb=fopen("integers.bin", "wb");
	for (unsigned int i=0; i<n; ++i) {
	    num = (rand()%range) + 1;
    	    fprintf(fnt, "%d\n", num);
	    fwrite(&num,sizeof(unsigned int),1,fnb);
	}
	fclose(fnt);
	fclose(fnb);
}
