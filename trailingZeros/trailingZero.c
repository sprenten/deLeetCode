#include <stdio.h>
#include <string.h>

char* removeTrailingZeros(char* num)
{
   char* retval;

   int len = strlen(num)-1;
   while (num[len] == '0')
   {
      len--;
   }
   len++;
   retval=calloc(len,sizeof(char));
   strncpy(retval,num,len);
   return  (*&retval);
}


int main()
{

   char* num = "51230100";
   char* s= "";
   s = removeTrailingZeros(num);

   printf("%s\n",s);
   num = "123";
   free(s);
   s= removeTrailingZeros(num);
   printf("%s\n",s);
   num =  "510";
   free(s);
   s= removeTrailingZeros(num);
   printf("%s\n",s);
   printf("%d\n",(int)strlen(s)) ;
   free(s);
}
