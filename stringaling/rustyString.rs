use std::fs::File;
use std::io::{BufReader, Read};
use std::time::Instant;

fn main()
{
	const  MAX_SIZE: usize =30000;
	let mut buffer : [u8; MAX_SIZE*4] = [0;MAX_SIZE*4];
	let mut input = BufReader::new(
        File::open("integers.bin")
        .expect("Failed to open file")
    	);

	let res = input.read(&mut buffer);
	let mut i: [u32; MAX_SIZE]  = unsafe { 
		std::mem::transmute::<[u8;MAX_SIZE*4],[u32;MAX_SIZE]>(buffer)
	};
//	ByString Performance
	let mut total_perf: f64 = 0.0;
	let mut z = 0;
	let mut c = 0;
        let mut num = 0;

        while z <100 { 
		c = 0;
		num = 0;
		let now = Instant::now();
		let mut x=0;
		while x < MAX_SIZE
		{
			c=c+1;
			let a = byString(i[x]);
			if a>0
			{
				num = num+1	//println!(" {} {}  {}",x,i[x],a);
			}
			x = x+1;
		}
		let x = now.elapsed().as_millis().to_string();
		let millis: f64 =  x.parse().unwrap();
		let time_spent = millis / 1000.0;
		total_perf = total_perf + time_spent;
		z = z +1;
	}
	println!("Rust : byString : Total {} : Average : {}",total_perf,total_perf/100.0);
//	println!("{} Evem Number Digits out of {} Integers tested",num,c);

//  ByStringModulo

	let mut total_perf: f64 = 0.0;
        let mut z = 0;
	let mut c = 0;
        let mut num = 0;
        while z <100 {
                c = 0;
                num = 0;
                let now = Instant::now();
                let mut x=0;
                while x < MAX_SIZE
                {
                        c=c+1;
                        let a = byStringModulo(i[x]);
                        if a>0
                        {
                                num = num+1     //println!(" {} {}  {}",x,i[x],a);
                        }
                        x = x+1;
                }
                let x = now.elapsed().as_millis().to_string();
                let millis: f64 =  x.parse().unwrap();
                let time_spent = millis / 1000.0;
                total_perf = total_perf + time_spent;
                z = z+1
        }
        println!("Rust : byStringModulo : Total : {}  : Average : {}",total_perf,total_perf/100.0);
//	println!("{} Evem Number Digits out of {} Integers tested",num,c);

//      ByLog10 Performance
        let mut total_perf: f64 = 0.0;
        let mut z = 0;
        let mut c = 0;
        let mut num = 0;

        while z <100 {
                c = 0;
                num = 0;
                let now = Instant::now();
                let mut x=0;
                while x < MAX_SIZE
                {
                        c=c+1;
                        let a = byLog10(i[x]);
                        if a>0
                        {
                                num = num+1     //println!(" {} {}  {}",x,i[x],a);
                        }
                        x = x+1;
                }
                let x = now.elapsed().as_millis().to_string();
                let millis: f64 =  x.parse().unwrap();
                let time_spent = millis / 1000.0;
                total_perf = total_perf + time_spent;
                z = z +1;
        }
        println!("Rust : bylog10 : Total : {}  : Average : {}",total_perf,total_perf/100.0);
//        println!("{} Evem Number Digits out of {} Integers tested",num,c);


//      ByLog10 Modulo Performance
        let mut total_perf: f64 = 0.0;
        let mut z = 0;
        let mut c = 0;
        let mut num = 0;

        while z <100 {
                c = 0;
                num = 0;
                let now = Instant::now();
                let mut x=0;
                while x < MAX_SIZE
                {
                        c=c+1;
                        let a = byLog10Modulo(i[x]);
                        if a>0
                        {
                                num = num+1     //println!(" {} {}  {}",x,i[x],a);
                        }
                        x = x+1;
                }
                let x = now.elapsed().as_millis().to_string();
                let millis: f64 =  x.parse().unwrap();
                let time_spent = millis / 1000.0;
                total_perf = total_perf + time_spent;
                z = z +1;
        }
        println!("Rust : byLog10Modulo : Total :  {} : Average : {}",total_perf,total_perf/100.0);
        println!("{} Evem Number Digits out of {} Integers tested",num,c);

//      ByDivision  Performance
        let mut total_perf: f64 = 0.0;
        let mut z = 0;
        let mut c = 0;
        let mut num = 0;

        while z <100 {
                c = 0;
                num = 0;
                let now = Instant::now();
                let mut x=0;
                while x < MAX_SIZE
                {
                        c=c+1;
                        let a = byDivision(i[x]);
                        if a>0
                        {
                                num = num+1     //println!(" {} {}  {}",x,i[x],a);
                        }
                        x = x+1;
                }
                let x = now.elapsed().as_millis().to_string();
                let millis: f64 =  x.parse().unwrap();
                let time_spent = millis / 1000.0;
                total_perf = total_perf + time_spent;
                z = z +1;
        }
        println!("Rust : byDivision : Total : {}  : Average : {}",total_perf,total_perf/100.0);
//        println!("{} Evem Number Digits out of {} Integers tested",num,c);

//      ByRecursiveDiv  Performance
        let mut total_perf: f64 = 0.0;
        let mut z = 0;
        let mut c = 0;
        let mut num = 0;

        while z <100 {
                c = 0;
                num = 0;
                let now = Instant::now();
                let mut x=0;
                while x < MAX_SIZE
                {
                        c=c+1;
                        let a = byRecursiveDiv(i[x]);
                        if a>0
                        {
                                num = num+1     //println!(" {} {}  {}",x,i[x],a);
                        }
                        x = x+1;
                }
                let x = now.elapsed().as_millis().to_string();
                let millis: f64 =  x.parse().unwrap();
                let time_spent = millis / 1000.0;
                total_perf = total_perf + time_spent;
                z = z +1;
        }
        println!("Rust : byRecursiveDiv : Total : {} : Average : {}",total_perf,total_perf/100.0);
//        println!("{} Evem Number Digits out of {} Integers tested",num,c);



}

fn byString(i:u32)->u32
{
	let n = i.to_string().len();
	let mut retval:u32 = 0;
	if (n&1) == 0 
		{retval = i;}
        return retval;
 	
}


fn byStringModulo(i:u32)->u32
{
	let n = i.to_string().len();
        let mut retval:u32 = 0;
	if (n%2) == 0 
		{retval =i;}  
        return retval;
}

fn byLog10(i:u32)->u32
{
	let f = i as f64;
	let n = f.log10() as u32;
        let mut retval:u32 = 0;
        if ((n+1)&1) == 0
                {retval =i;}
        return retval;
}

fn byLog10Modulo(i:u32)->u32
{
	let f = i as f64;
        let n = f.log10() as u32;
        let mut retval:u32 = 0;
        if ((n+1)%2) == 0
                {retval =i;}
        return retval;
}

fn numDigits(i:u32)->u32
{
	let mut a = i;
	if i== 0
	 {
        	return 1;
	}
    	let mut count = 0;
    	while (a != 0) {
        	a = a / 10;
        	count = count+1;
    	}
    return count;
}

fn byDivision(i:u32)->u32
{
        let mut  retval:u32=0;
        let len = numDigits(i);
        if  (len&1) == 0
	{ retval= i;}
        return retval;
}

fn recursion(i:u32)->u32
{
    let n= i/10;
    if n ==  0
    {
        return 1;
    }
    return 1 + recursion(n);
}


fn byRecursiveDiv(i:u32)->u32
{
        let mut retval:u32=0;
        let len = recursion(i);
        if  (len&1) == 0
        { retval= i;}
        return retval;
}
