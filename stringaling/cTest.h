

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
    unsigned int n= (unsigned int) i/10;
    if (n ==  0)
        return 1;
    return 1 + recursion(n);
}

unsigned int byDivision(unsigned int i)
{
        unsigned int retval=0;
        int len = numDigits(i);
        if ((len&1) == 0)
	{
		retval = i;
	}
        return retval;
}


unsigned int byRecursiveDiv(unsigned int i)
{
        unsigned int retval=0;
        int len = recursion(i);
        if ((len&1) == 0)
	{
		retval =i;
	}
        return retval;
}

unsigned int byString(unsigned int i)
{
        unsigned int retval=0;
        int len = snprintf( NULL, 0, "%d", i );
        if  ((len&1) == 0)
		retval = i;
        return retval;
}


unsigned int byLog10(unsigned int i)
{
        unsigned int retval=0;
	float f= log10f(i);
        unsigned int len = (unsigned int) f + 1;
//	int len = convert(f);
        if (((len)&1) == 0)
		retval=i;
        return retval;
}

unsigned int byNewLog10(unsigned int i)
{
	unsigned int retval = 0;
	unsigned int len = (unsigned int)log10f(i) +1 ;
	if (((len&1)) == 0)
		retval = i;
	return retval;
}

