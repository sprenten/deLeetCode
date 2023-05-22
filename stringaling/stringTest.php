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



function main()
{

        //FILE *fp;
        $NUM_READ =30000;
	$total_perf =  0;
	settype($total_perf,"float");

        $fp=fopen("integers.bin", "rb");
        $buffer = fread($fp,filesize("integers.bin"));
	//echo $buffer;
	$i = unpack("I*",$buffer);
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

}

main();
?>
