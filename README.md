# deLeetCode
Very non Elite code from LeetCoders  by Jr's masquerading as Sr. Engineers or Architects.


I started this git library as a response to Conor Hoekstra's Code Reports videos which highlighted two mistakes I would assume Jr. Programmers and Devs make not Sr. ones working at NVIDIA.

This is not a slam on Conor, it's more of a slam on an industry which seems to think I am no longer viable as an Engineer because my preference is C over shit like Java, .NET, JS and it's Variants, 
Python, etc...  I'll admit I still do have a soft spot for PHP, but in terms of performance PHP is probably just a better solution as a programming language than Java if you are doing dynamic
websites.  Performance should mean more than pure readability as well, but readability is in the eye of the beholder and performance is always measurable.  I just watched a Primeagean code review 
today and honestly they are mid to senior level type devs like me.  If you want examples of solid Senior to Principal level development coding practices, look at coding videos by Jonathon Blow, Tsoding,
and even Casey's videos.

I am not leaving make files, I may upload some executables, but if you don't know what the code does and can't figure out how to compile the code then go learn how to do that. I have been 
playing compilers since I was 10 years old and I am almost 50 now, so that's about 40 years of programming at a low level.  Yes, what I was doing as a kid is significantly harder than the average JS/Typescript
coder is doing.

A couple of things, I am not a RUST fanboy, but I do believe RUST has a future, but I still believe C is the best language to write in and one of the first things I did in RUST was use "unsafe".  C89/ANSI C/C90
and C99 make you think hard about what you are writing, but memory safety is not the problem with exploits.  With the greater proliferation of "memory safe" languages the Integer Overflow has become vogue and
lulls you into a deep sense of security. 

Random things, Python is so slow, I am mostly no longer going to use it in examples. 1 of the methods in the stringaling section (even number digits in an Integer array) takes over 20s to do 100 loops over the same 
array of 30000 integers. I only time the time spent making the calculation, and leave out the loop calls.  All other examples using the same method took 0.20s or less to run, so that's a factor of greater than 100x 
slower.   

I do this in my spare time and try keep the code some what uniform.  I have no time for people worried about camelCase or snake_case.  I use simple variable names here for a reason, but try to be consistent across
all languages so i in C is the same as i in php, java, rust, etc... as the variable i is the array I hold the integers in the stringaling section.  I may possibly add argc,argv to enter filename and number of 
iterations the examples use.  For the sake of speed in writing these example exercises and not having to test those functions extensively.  I did rewrite my random unsigned integer program to take input to make writing
random unsigned integer files easier.


