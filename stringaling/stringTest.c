#include <stdio.h>
#include <string.h>

unsigned int byString(unsigned int i)
{
	unsigned int retval;
	int len = snprintf( NULL, 0, "%d", i );
	retval = ((len&1) == 0)? i : 0;
	return retval;
}



int main()
{
	unsigned int i[10] = {20,234,78.1001,5092,3,276,843,702123,512};
	unsigned int a[10];
	unsigned int a_count;
	a_count=-1;
	
	for (int x=0;x<=9;x++)
	{
		int b = byString(i[x]);
		if (b>>0)
		{
			printf("%d \n",b);
		}
	}


}
