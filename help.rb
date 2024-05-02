require 'terminal-table'
class Help
  def self.generate_table
    table = Terminal::Table.new do |rows|
      rows << ['v PC\User >', 'rock', 'paper', '3rd move', '4th', '5th']
      rows << ['rock', 'Draw', 'Win', 'Win', 'Lose', 'Lose']
      rows << ['paper', 'Lose', 'Draw', 'Win', 'Win', 'Lose']
      rows << ['3rd move', 'Lose', 'Lose', 'Draw', 'Win', 'Win']
      rows << ['4th', 'Win', 'Lose', 'Lose', 'Draw', 'Win']
      rows << ['5th', 'Win', 'Win', 'Lose', 'Lose', 'Draw']
      rows.style = {:all_separators => true}
    end
    puts table
  end
end
