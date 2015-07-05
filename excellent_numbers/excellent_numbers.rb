require_relative 'excellent_numbers_finder.rb'

class ExcellentNumbers

  def get(min, max)
    results = ExcellentNumbersFinder.new.find_all_between(min,max)
    sum results
  end

  private
  def sum(results)
    sum = 0
    results.map{|i| sum += i}
    sum
  end

end
