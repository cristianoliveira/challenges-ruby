#!/usr/bin/env ruby
#

time = gets.strip
result = /(\d{2}):(\d{2}):(\d{2})(\w{2})/.match(time)
_, h, m, s, period = result.to_a

hour = h.to_i
if period == "AM"
  hour = 00 if hour == 12
else
  hour += 12 unless hour == 12
end

p "%02d:%02d:%02d" % [hour, m, s]

