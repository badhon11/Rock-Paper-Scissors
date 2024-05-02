require_relative 'key.rb'
require_relative 'authentication.rb'
require_relative 'rules.rb'
require_relative 'result.rb'
require_relative 'help.rb'
include Result
moves = ARGV

loop do
  if moves.length < 3 || moves.length % 2 == 0
    puts "Number of moves must be equal or greater than 3 and also an odd number.
Example: 'rock' 'paper' 'scissor' or '1' '2' '3' '4' '5' etc."
    break
  end
  duplicate = false
  moves.each do |move|
    if moves.count(move)>1
      duplicate = true
      break
    end
  end
  if duplicate
    puts "Moves must be unique.
Example:
'rock' 'paper' 'paper' is incorrect.
'rock' 'paper' 'scissors' is correct."
    break;
  end
  key_obj = Key.new
  own_move = moves.sample()
  hmac = Authentication.new(key_obj.key, own_move)
  hmac.show_mac
  puts "Available moves:"
  moves.each_with_index {|move, id| puts "#{id+1} - #{move}"}
  puts "0 - exit\n? - help"
  print "Enter your move: "
  user_move_string = STDIN.gets.chomp
  if user_move_string=="?"
    Rule.show_rules
    Help.generate_table
    next
  end
  user_move = user_move_string.to_i
  if user_move == 0
    break
  elsif user_move < 0 || user_move > moves.length
    puts "Invalid input. Please choose an available move."
    next 
  else
    user_move -= 1
  end
  puts "Your move: #{moves[user_move]}\nComputer move: #{own_move}"
  computer_move = moves.find_index(own_move)
  Result.generate_result(user_move, computer_move, moves.length/2)
  key_obj.show_key
end