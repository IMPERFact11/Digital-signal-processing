clear 
N=1000 // number of point 
Te=0.1e-3
t= Te*(0:N-1)// definition of the vector t for the plot from 0 to 15 by a step of 1 
amp=5; f=100
s=amp*sin(2*%pi*f*t)// main function 
//figure(1)
//clf(1)
//plot2d(t,s)
//xtitle("signal versus","time","amplitude")
Fe=1/Te
f=(Fe/N)*(0:N-1)
sf=fft(s,-1)
figure(1)
clf(1)
xsetech([0,0,1,1/3])// to dispalay on the first third 
plot2d(abs(sf))
xtitle("non norm fft mod vs indices","samp index","amp")
xsetech([0,1/3,1,1/3])
plot2d(f(1:N/2),1/N*abs(sf(1:N/2)))// to display from 1 to N/2 . 1/N to correct the amplitude of fast ft 
xtitle("correct mod from 0to fe/2","freq","amp")
xsetech([0,2/3,1,1/3])
plot2d(f(1:N/20),1/N*abs(sf(1:N/20)))
xtitle("correct mod and zoom","freq","amp");
