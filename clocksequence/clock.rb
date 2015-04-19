require './clock_sequence.rb'

class Clock
  
  def initialize
    @@clock_seq = ClockSequence.new
  end

  def get(number)
    res_holder = ""
    
    for i in 0..(number - 1) do
      seq_holder = ""
      res_sum = 0

      begin
        r = @@clock_seq.get_current
        seq_holder += r.to_s
        res_sum += r
        @@clock_seq.next
      end while(res_sum < i)
 
      res_holder = seq_holder
    end
    
    res_holder
  end
end
