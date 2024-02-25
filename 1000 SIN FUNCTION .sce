clear 
N=1000 // number of point 
Te=0.1e-3
t= Te*(0:N-1)// definition of the vector t for the plot from 0 to 15 by a step of 1 
amp=5; f=100
s=amp*sin(2*%pi*f*t)// main function 
figure(1)
clf(1)
plot2d(t,s)
xtitle("signal versus","time","amplitude")
