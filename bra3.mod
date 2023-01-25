
# Nombre de particions
param n = 100;

# Variables a optimitzar
var x {i in 0..n};
var y {i in 0..n};

# Maximitzem la funció objectiu
minimize total:
	sum{i in 1..n}
		sqrt((((x[i] - x[i-1]) ** 2) + ((y[i] - y[i - 1]) ** 2)) / (2 * 9.81 * (y[i - 1])));

subject to constriccio_1:
	y[0] = 0.001;
	
subject to constriccio_2:
	x[0] = 0.001;

subject to constriccio_3:
	y[n] = 1;
	
subject to constriccio_4:
	x[n] = 1;
	
subject to constriccio_5 {i in {1..n}}:
	y[i] - y[i - 1] >= 0.00001;

subject to constriccio_6 {i in {1..n}}:
	x[i] - x[i - 1] >= 0.00001;