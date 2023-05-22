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
        int len = numDigits(i);
        retval = ((len&1) == 0)? i : 0;
        return retval;
}


unsigned int byRecursiveDiv(unsigned int i)
{
        unsigned int retval;
        int len = recursion(i);
        retval = ((len&1) == 0)? i : 0;
        return retval;
}

unsigned int byString(unsigned int i)
{
        unsigned int retval;
        int len = snprintf( NULL, 0, "%d", i );
        retval = ((len&1) == 0)? i : 0;
        return retval;
}


unsigned int byLog10(unsigned int i)
{
        unsigned int retval=0;
        int len = log10(i);
        if (((len+1)&1) == 0)
		retval=i;
        return retval;
}

unsigned int byNewLog10(unsigned int i)
{
	unsigned int retval = 0;
	unsigned int len = log10f(i);
	if (((len+1)&1) == 0) 
		retval = i;
	return retval;
}

