import java.io.*;
import java.lang.*;
import java.nio.*;
import java.time.*;

public class stringTest {
    public static void main(String[] args) {

	final int NUM_READ = 30000;
        String file = "integers.bin";
        try (
            InputStream inputStream = new FileInputStream(file);
	 )
         {
            long fileSize = new File(file).length();
            byte[] buffer = new byte[(int) fileSize];

            int bytesRead = inputStream.read(buffer);

             IntBuffer intBuf =
   		ByteBuffer.wrap(buffer)
     			.order(ByteOrder.LITTLE_ENDIAN)
     			.asIntBuffer();
 	     int [] i = new int[intBuf.remaining()];
 	     intBuf.get(i);


	Clock clock = Clock.systemUTC();


	// ByString

	double total_perf = 0;
	int b = 0;
	int c = 0;
	int num = 0;
        for (int z=1;z<=100;z++)
        {
                long begin = clock.millis();
                   for (int y=0;y<NUM_READ; y++)
                   {
                        c++;
                         b = byString(i[y]);
                        if (b>0)
                        {
                                num++;
//                              printf("%d \n",b);
                        }
                   }
                long end = clock.millis();
                double time_spent = (double)(end - begin)/ 1000 ;
                total_perf += time_spent;
        }
        System.out.printf("Java : byString : Total: %.6f : Average: %.6f\n",total_perf,(total_perf/100));


// ByLog10

	total_perf = 0;
	 b = 0;
	 c = 0;
	num = 0;
        for (int z=1;z<=100;z++)
        {
                long begin = clock.millis();
                   for (int y=0;y<NUM_READ; y++)
                   {
                        c++;
                         b = byLog10(i[y]);
                        if (b>0)
                        {
                                num++;
//                              printf("%d \n",b);
                        }
                   }
                long end = clock.millis();
                double time_spent = (double)(end - begin)/ 1000 ;
                total_perf += time_spent;
        }
        System.out.printf("Java : byLog10 : Total: %.6f : Average: %.6f : Total: %d\n",total_perf,(total_perf/100),num);



          }

          catch (IOException ex) {
           ex.printStackTrace();
          }




    }

	private static int byString(int i)
	{
	        int retval=0;
	        int len = Integer.toString(i).length();
	        if  ((len&1) == 0)
	                retval = i;
	        return retval;
	}


	private static  int byLog10(int i)
	{
	        int retval=0;
	        double f= Math.log10(i);
	        int len = (int) f + 1;
	//      int len = convert(f);
	        if (((len)&1) == 0)
	                retval=i;
	        return retval;
	}
/*
	private  int byNewLog10(unsigned int i)
	{
	        unsigned int retval = 0;
	        unsigned int len = (unsigned int)log10f(i) +1 ;
	        if (((len&1)) == 0)
	                retval = i;
	        return retval;
	}
*/



}
