def add(x,y)
	return x + y
end

def subtract(x, y)
	return x - y
end

def sum(array)
	s = 0
	array.each{|x| s += x}
	s
end

def multiply(x, y)
	x * y
end

def power(x, y)
	x ** y
end

def factorial(x)
	x.times{|y| s *= y}
end
