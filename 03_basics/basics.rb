def who_is_bigger(x, y, z)
	if (x == nil) || (y == nil) || (z == nil)
		"nil detected"
	else
		s = ""
		if (x < y) && (z < y)
			s = "b"
		elsif (x < z) && (y < z)
			s = "c"
		elsif (y < x) && (z < x)
			s = "a"
		end
		"#{s} is bigger"
	end
end

def reverse_upcase_noLTA(x)
	x.upcase!
	x.gsub!(/[LTA]/, "")
	x.reverse!
end

def array_42(array)
	a = false
	if array.include?(42)
		a = true
	end
	return a
end

def magic_array(array)
	array.flatten!
	i = 0
	arr = []
	array.each{|x|
		if (x*2)%3 != 0
			arr[i] = x * 2
			i += 1
		end
	}
	return arr.uniq.sort
end
