def mono(m)	
	if (/[aeiou]/ =~ m) == 0
		m + "ay"
	elsif (/[aeiou]/ =~ m) == 1 && (m[0]+m[1] != "qu")
		s = m[0]
		m[0] = '' 
		m + s + "ay"
	elsif (/[aeiou]/ =~ m) == 2 && (m[2] != "u")
		r = m[0] + m[1]
		m[0] = ''
		m[0] = ''
		m + r + "ay"
	elsif (/[aeiou]/ =~ m) == 3
		r = m[0] + m[1] + m[2]
		m[0] = ''
		m[0] = ''
		m[0] = ''
		m + r + "ay"
	elsif (/sch/ =~ m) == 0
		m.gsub('sch', '')
		m + "schay"
	elsif (/qu/ =~ m) == 0
		m[0] = ''
		m[0] = ''
		m + "quay"
	elsif (/[qu]/ =~ m) == 1 && ((/[aeiou]/ =~ m) != 0)
		q = m[0] + m[1] + m[2]
		m[0] = ''
		m[0] = ''
		m[0] = ''
		m + q + "ay"
	end
end

def translate(p)
array = p.split(" ")
	if array.length == 1
		mono(p)
	else
		i = 0
		s = []
		array.each{|x|
			s[i] = mono(x)
			i += 1
		}
		s.join(" ")
	end

end
