#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
	FILE *fnt;  //text file pointer
	FILE *fnb;  //binary file pointer
	unsigned int num, n, range;
	char fileName[50];
	char txtFileName[54];
	char binFileName[54];
	printf("Enter number of positive integer:");
	scanf("%d", &n);
	printf("Enter max integer:");
	scanf("%d", &range);
	printf("Enter File Name:");
	scanf("%s",fileName);
	strcpy(txtFileName,fileName);
	strcat(txtFileName,".txt");
	strcpy(binFileName,fileName);
	strcat(binFileName,".bin");
	fnt=fopen(txtFileName,"w");
	fnb=fopen(binFileName, "wb");
	for (unsigned int i=0; i<n; ++i) {
	    num = (rand()%range) + 1;
    	    printf("%d\n",num);
	    fprintf(fnt, "%d\n", num);
	    fwrite(&num,sizeof(unsigned int),1,fnb);
	}
	fclose(fnt);
	fclose(fnb);
}
