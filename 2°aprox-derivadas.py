# -*- coding: utf-8 -*-
"""
Created on Tue Sep 22 07:41:00 2015

@author: est7
"""

import numpy as np
import matplotlib.pyplot as plt

def f(t): #defino la funcion f coo}mo el sin de t
    return np.sin(t)

def fd(t):
    return np.cos(t)

def f1(g,t):
    return ((g(t[1])-g(t[0]))/(t[1]-t[0]))

x=np.arange(0.,5.,0.1)
y=np.empty(len(x))
y1=np.empty(len(x))
yf=np.empty(len(x))
yb=np.empty(len(x))
yc=np.empty(len(x))

for i in range(len(x)):
    y[i]= f(x[i])
    y1[i]=fd(x[i])

for i in range(len(x)-1):
    yf[i]=f1(f,x[i:i+2])

yf[-1]=0.0
yb[0]=0.0
yc[0]=0.0

for i in range(len(x)-1):
    yb[i+1]=f1(f,x[i:i+2])

for i in range(1,len(x)-1):
    yc[i]=((y[i+1]-y[i-1])/(x[i+1]-x[i-1]))
    
for i in range(len(x)):
    print y1[i],yc[i], yb[i],yf[i]


plt.plot(x,y1,"r-")
plt.plot(x,yf,"bo")
plt.plot(x,yb,"yp")
plt.plot(x,yc,"g-")
plt.show()