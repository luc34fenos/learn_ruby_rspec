def time_string(n)
	s = n % 60
	l = n / 60
	m = l % 60
	h = l / 60
	return "#{h.to_s.rjust(2,'0')}:#{m.to_s.rjust(2,'0')}:#{s.to_s.rjust(2,'0')}"  
end
