clear 
N=1200 // number of point 
Te=10e-6
t= Te*(0:N-1)// definition of the vector t for the plot from 0 to 15 by a step of 1 
amp=5; f=250// when we decrease the frequence we see more pics ( harmoniques) the pics only appear on the multiple values 
s=amp*squarewave(2*%pi*f*t)// main function 

Fe=1/Te
f=(Fe/N)*(0:N-1)
sf=fft(s,-1)
si=fft(sf,1)
figure(1)
clf(1)

xsetech([0,0,1,1/3])
plot2d(f(1:N/20),1/N*abs(sf(1:N/20)))// we use the absolute 
xtitle("correct mod and zoom","freq","amp");
xsetech([0,1/3,1,1/3])
plot2d(t(1:N),(si(1:N)))
xtitle("inverse TF","freq","amp");
