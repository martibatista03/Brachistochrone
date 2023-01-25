## Brachistochrone

The problem we want to solve consists in the numerical approximation of the brachistochrone curve, which represents the most efficient ramp to bring down a body from a point $O$ to a point $F$ as fast as possible, reason why we will have to obtain the results as a solution of an optimization problem. 

For simplicity, when considering the AMPL models, we have chosen to consider the axis of the ordinates in reverse; that is, treating an uphill instead of a downhill, such that each point $y$ of the found optimal function is $-y$ of the actual ramp. 

We consider the initial point $O(0, 0)$ and the final point $F(1, 1)$, also for simplicity. Remember that $g$ is the gravity of the Earth on the surface ( $9.81 m/s^2$ ). The numerical approximation that will lead to the optimum of the problem (the brachystochrone curve) will be carried out in three different ways. The first (A) will consist of discretizing the horizontal axis in $n$ partitions, so that at each point $x_i \hspace{1mm} (i \in \{0, ... , n\}$ ) will be assigned a coordinate $y_i$, making $y_0, ... , y_n$ the total number of variables in the problem. The second (B) will be fundamentally the same but discretizing the vertical axis and considering the $x_i$ as variables of the problem. The third variant (C) will consider both $x_i$ and $y_i$ variables of the problem. 

Therefore, once the problem approximation process is explained, it is clear that the distance between two points $(x_{i-1}, y_{i-1})$ and $(x_i, y_i)$ can be obtained simply applying the Pythagorean Theorem, so that $ds_i = \sqrt{(y_i - y_{i - 1})^2 + (x_i - x_{i - 1})^2}$. On the other hand, considering that the mechanical energy of the body remains constant, if we operate we can reach the conclusion that the instantaneous speed at each interval can be approximated as $\sqrt{2gy_{i-1}}$. Note that we consider $y_{i-1}$ instead of $y_i$ since we want the velocity at the beginning of the interval.

The mathematical formalization corresponding to these three approaches of the problem is the following:

<p align="center">
  <img src="https://user-images.githubusercontent.com/71564709/214545458-923506c2-77cf-4984-ae49-b99945c76217.png" width="700">
</p>  

<p align="center">
  <img src="https://user-images.githubusercontent.com/71564709/214545467-320c0f6d-999c-46f8-973d-c4bb0d9ba016.png" width="700">
</p>  

<p align="center">
  <img src="https://user-images.githubusercontent.com/71564709/214545480-5cc5c8da-0708-4637-b1f6-916f8b275f24.png" width="700">
</p>  


## Use

The files ```bra1.run, bra1.mod``` correspond to the formulation A, the files ```bra2.run, bra2.mod``` correspond to the formulation B and the files ```bra3.run, bra3.mod``` correspond to the formulation C. In the ```.run``` file it has to be determined a ```.txt``` file path where the results can be printed. These results, once run the ```.run``` file, can be imported to an excel file where they can be graphed, obtaining the optimal descent curve, an inverted cycloid. 


## Authors

Alessandro Valls Pau and Martí Batista Obiols

