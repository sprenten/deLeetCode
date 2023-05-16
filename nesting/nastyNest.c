
#include <stdio.h>

int calculate(int bottom, int top)
{
    if (top > bottom) {
        int sum = 0;
        for (int number = bottom; number <= top; number++) {
            if (number % 2 == 0) {
                sum += number;
            }
        }
        return sum;
    }
    else
    {
        return 0;
    }
}


int main()
{
	int result;
	result = calculate(37,67);
	printf("%d",result);
	printf("\n");
	result = calculate(2,109);
	printf("%d",result);

}



