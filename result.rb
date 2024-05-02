module Result
  def generate_result(user_move, computer_move, half)
    if user_move == computer_move
      puts "It's a Draw!"
    elsif user_move > computer_move
      if user_move-computer_move > half
        puts "You Lose!"
      else
        puts "You Win!"
      end
    else
      if computer_move-user_move > half
        puts "You Win!"
      else
        puts "You Lose!"
      end
    end
  end
end
