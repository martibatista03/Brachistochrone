
# Nombre de particions
param n = 100;

# Discretització de les ordenades
param y {i in 0..(n)} := (i+0.001) / (n-1);

# Variables de les abscisses a optimitzar
var x {i in 0..n};

# Maximitzem la funció objectiu
minimize total:
	sum{i in 1..n}
		sqrt((((x[i] - x[i-1]) ** 2) + ((y[i] - y[i - 1]) ** 2)) / (2 * 9.81 * y[i - 1]));

subject to constriccio_1:
	x[0] = 0;
	
subject to constriccio_2:
	x[n] = 1;