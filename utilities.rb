
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
			return hours + ":" + minutes
		else
			return (hours.to_i + 12).to_s + ":" + minutes
		end
	elsif am_pm.downcase == "am"
		if hours.to_i == 12
			return (hours.to_i - 12).to_s + ":" + minutes
		else
			return hours + ":" + minutes
		end
	end

end

def military_to_standard(time)
	hours, minutes = time.split(":")

	if hours.to_i == 0
		return "12:" + minutes + " am"
	elsif hours.to_i < 12
		return hours + ':' + minutes + " am"
	elsif hours.to_i == 12
		return hours + ':' + minutes + " pm"
	else
		return (hours.to_i - 12).to_s + ':' + minutes + " pm"
	end

end

def pm?(time)
	time.split(' ')[1] == 'pm'
end

def hour(time)
	time.split(':')[0].to_i
end

def on_time?(time, weekday)
	if pm?(time)
		return 	(hour(time) <= 8 && weekday) || (hour(time) <= 10 && !weekday)
	else
		return true
	end
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
