
def leap_year?(year)
	if multiple?(year, 100)
		multiple?(year, 400)
	else
		multiple?(year, 4) && !multiple?(year, 100)
	end

end

def multiple?(year, divisor)
	year % divisor == 0
end

SECONDS_IN_YEAR = 31536000.0

def percent_year(seconds)
	('%.1f' % (seconds / SECONDS_IN_YEAR * 100)) + '%'
end

def standard_to_military(x)
	hours, b = x.split(":")
	minutes, am_pm = b.split(" ")

	if am_pm.downcase == "pm"
		if hours.to_i == 12
			return hours + ":" + c
		else
			return (hours.to_i + 12).to_s + ":" + c
		end
	elsif am_pm.downcase == "am"
		if hours.to_i == 12
			return (hours.to_i - 12).to_s + ":" + c
		else
			return hours + ":" + c
		end
	end

end

def convert2(x)
	a, b = x.split(":")
	c = ""

	if a.to_i < 12
		c = a + b + " am"
	else
		c = a + b + " pm"
	end

	return c
end

def okay(a, b)
	c = false
	if (a.split(":")[0].to_i >= 8 && b || a.split(":")[0].to_i >= 10 && !b) && a.split(":")[1].split(" ")[1] == 'pm'
		c = false
	else
		c = true
	end
	return c
end

def span(a, b)
	c = 0
	d = 0
	if a < b
		c = b
		d = a
	else
		c = a
		d = b
	end

	return ('%.1f' % (amount(c)[0..-2].to_f - amount(d)[0..-2].to_f)).to_s + '%'
end
