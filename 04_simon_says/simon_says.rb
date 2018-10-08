def echo(n)
	n
end

def shout(n)
	n.upcase
end

def repeat(m, n = 2)
	o = m
	(n-1).times{ o += " " + m}
	return o
end

def start_of_word(m, n)
	return m[0, n]
end

def first_word(m)
	array = m.split(" ")
	return array[0]
end

def titleize(m)
	i = 0
	array = m.split(" ")
	array.each{|n| 
		if (i == 0) || (n.length.to_i > 3) 
			n.capitalize!
		end
		i += 1
	}
	array.join(" ")
end
