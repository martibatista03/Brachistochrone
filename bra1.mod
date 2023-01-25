
# Nombre de particions
param n = 100;

# Discretització de les abscisses
param x {i in 0..n} = i / n;

# Variables de les ordenades a optimitzar
var y {i in 0..n};

# Minimitzem la funció objectiu
minimize total:
	sum{i in 1..n}
		sqrt((((x[i] - x[i-1]) ** 2) + ((y[i] - y[i - 1]) ** 2)) / (2 * 9.81 * y[i - 1]));

subject to constriccio_1:
	y[0] = 0.001;
	
subject to constriccio_2:
	y[n] = 1;
	
subject to constriccio_3 {i in {1..n}}:
	y[i] - y[i - 1] >= 0.00001;