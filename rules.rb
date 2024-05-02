class Rule
    def self.show_rules
      puts "If you imagine the moves in a circular orientation then the victory is defined as follows—
      - Half of the next moves in the circle wins
      - Half of the previous moves in the circle lose 
      - The semantics of the moves is not important, winner is defined by the rules build upon the moves order the user used (even if the stone loses to scissors in its order— the contents of the moves are not important for you).
      "
    end
  end