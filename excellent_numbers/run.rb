require_relative 'excellent_numbers.rb'

ini = Time.now

excellent = ExcellentNumbers.new
result = excellent.get(1000000000, 9999999999)

fim = Time.now

p "Result: #{result} in #{fim - ini}"
