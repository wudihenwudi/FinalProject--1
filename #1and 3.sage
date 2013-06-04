FinalProject--1
===============
def check(points):
    m = len(points)
    d = [points[1][0] - points[0][0], points[1][1] - points[0][1]]
    for p in points:
        if(d[0] == 0):
            if(p[0] != points[0][0]):
                return False
        elif(d[1] == 0):
           if(p[1] != points[0][1]):
                return False
        else:
            if(p[0] - points[0][0] != 0):
                if((p[1] - points[0][1])/(p[0] - points[0][0]) != d[1] / d[0]):
                    return False
            else:
                 return False
    return True

check([[1,0],[2,0],[3,0]])




=============== #3
import random
def gen_points(n, d, mu, sigma):
    points = []
    for i in range(0, n-1):
        p = [0] * d
        for j in range(0, d):
            p[j] = random.normalvariate(mu, sigma)
        points.append(p)
    return points

gen_points(10,3,0,4)
