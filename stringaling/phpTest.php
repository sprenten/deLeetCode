<?php
function  byString($i)
{
        $retval = 0;
        $len = strlen($i);
	if  (($len&1) == 0)
	{
		$retval = $i;
	}
        return $retval;
}

function  byStringModulo($i)
{
        $retval = 0;
        $len = strlen($i);
        settype($len,'integer');
	if  (($len%2) == 0)
        {
                $retval = $i;
        }
        return $retval;
}


function  byLog10($i)
{
        $retval = 0;
        $len = intval(log10($i));
        if  ((($len+1)&1) == 0)
        {
                $retval = $i;
        }
        return $retval;
}

function numDigits($i)
{
   if ($i== 0)
        return 1;
    $count = 0;
    while ($i != 0) {
        $i = $i / 10;
        $count=$count+1;
    }
/*    $n = $i;
    settype($n,"integer");
    while ($n != 0) {
        $n = $n / 10;
        $count=$count+1;
    }
*/
    return $count;

}

function recursion($i)
{
    $n= intval($i/10);
    if ($n ==  0)
        return 1;
    return 1 + recursion($n);

}


function byDivision($i)
{
        $retval=0;
        $len = numDigits($i);
        if (($len&1) == 0)
	{
	  $retval= $i;
	}
        return $retval;
}


function byRecursiveDiv($i)
{
        $retval=0;
        $len = recursion($i);
        if (($len&1) == 0)
	{
	   $retval=$i;
	}
        return $retval;
}

function main()
{

        //FILE *fp;
        $NUM_READ =30000;
	$total_perf =  0;
	$b=0;
	$c=0;
	$num=0;
	settype($total_perf,"float");

        $fp=fopen("integers.bin", "rb");
        $buffer = fread($fp,filesize("integers.bin"));
	//echo $buffer;
	$i = unpack("I*",$buffer);

//By String
	for ($z=0;$z<100;$z++)
	{
	   $b=0;
	   $c=0;
	   $num=0;

	   $begin = microtime(true);
           for ( $y=1;$y<=$NUM_READ; $y++)
           {
                $c++;
                $b = byString(strval($i[$y]));
                if ($b>>0)
                {
                        $num++;
//                        printf("%d \n",$b);
                }
           }
           $end = microtime(true);
           $time_spent = $end - $begin;
	   $total_perf = $total_perf + $time_spent;
        }
	printf("PHP : byString : Total : %f : Average : %f\n",$total_perf,$total_perf/doubleval(100));

	$total_perf = 0;
//By String Modulo
	for ($z=0;$z<100;$z++)
        {
           $b=0;
           $c=0;
           $num=0;

           $begin = microtime(true);
           for ( $y=1;$y<=$NUM_READ; $y++)
           {
                $c++;
                $b = byStringModulo(strval($i[$y]));
                if ($b>>0)
                {
                        $num++;
//                        printf("%d \n",$b);
                }
           }
           $end = microtime(true);
           $time_spent = $end - $begin;
           $total_perf = $total_perf + $time_spent;
        }
        printf("PHP : byStringModulo : Total : %f : Average : %f\n",$total_perf,$total_perf/doubleval(100));

//By Log 10
	$total_perf = 0;
        for ($z=0;$z<100;$z++)
        {
           $b=0;
           $c=0;
           $num=0;

           $begin = microtime(true);
           for ( $y=1;$y<=$NUM_READ; $y++)
           {
                $c++;
                $b = byLog10($i[$y]);
                if ($b>>0)
                {
                        $num++;
//                        printf("%d \n",$b);
                }
           }
           $end = microtime(true);
           $time_spent = $end - $begin;
           $total_perf = $total_perf + $time_spent;
        }
        printf("PHP : byLog10 : Total : %f : Average : %f\n",$total_perf,$total_perf/doubleval(100));

// By Division
	$total_perf = 0;
        for ($z=0;$z<100;$z++)
        {
           $b=0;
           $c=0;
           $num=0;

           $begin = microtime(true);
           for ( $y=1;$y<=$NUM_READ; $y++)
           {
                $c++;
                $b = byDivision($i[$y]);
                if ($b>>0)
                {
                        $num++;
//                        printf("%d \n",$b);
                }
           }
           $end = microtime(true);
           $time_spent = $end - $begin;
           $total_perf = $total_perf + $time_spent;
        }
        printf("PHP : byDivision : Total : %f : Average : %f\n",$total_perf,$total_perf/doubleval(100));


// By Recursive Division

	$total_perf = 0;
        for ($z=0;$z<100;$z++)
        {
           $b=0;
           $c=0;
           $num=0;

           $begin = microtime(true);
           for ( $y=1;$y<=$NUM_READ; $y++)
           {
                $c++;
                $b = byRecursiveDiv($i[$y]);
                if ($b>>0)
                {
                        $num++;
//                        printf("%d \n",$b);
                }
           }
           $end = microtime(true);
           $time_spent = $end - $begin;
           $total_perf = $total_perf + $time_spent;
        }
        printf("PHP : byRecursiveDiv : Total : %f : Average : %f : %f of %f\n",$total_perf,$total_perf/doubleval(100),$num,$c);

}

main();
?>
