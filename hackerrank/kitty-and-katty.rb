#!/bin/ruby
# Kitty and Kattu have N plastic blocks.
#
# - Kitty aways start
# - N plastic blocks
# - Label blocks 1 ~ N
# - Each turn remove 2 blocks, A and B and do A-B the result add again in the set
# - The game ends when there is one block left
#
# The winner is the result of the final block X following:
#  - X % 3 == 1 -> Kitty wins
#  - X % 3 == 2 -> Katty wins
#  - X % 3 == 0 last player who moved wins
#
will_kitty_win = lambda { |x| x%3==1 }
last_win = lambda { |set, x| set.size==0 && x%3==0 }

# even-kitty | odd-katty
turn = 0
kitty = lambda { |x| x%2==0 }

teste_case = gets.strip.to_i
teste_case.times do
  n = gets.strip.to_i
  # create set
  set = (1..n).to_a
  # make take decision
  while set.size > 1
    a, b = set.pop(2)

    if kitty.(turn)
      # puts "Kitty`s turn"
      res = a-b if will_kitty_win.(a-b) or last_win.(set, a-b)
      res = b-a if will_kitty_win.(b-a) or last_win.(set, b-a)
    else
      # puts "Katty`s turn"
      res = a-b if !will_kitty_win.(a-b) or last_win.(set, a-b)
      res = b-a if !will_kitty_win.(b-a) or last_win.(set, b-a)
    end

    set.push(res)
    turn += 1 if set.size > 1
  end

  if kitty.(turn)
    puts "Kitty"
  else
    puts "Katty"
  end
end
