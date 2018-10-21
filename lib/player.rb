class Player
  attr_accessor :guesses

  def initialize
    @guesses = []

  end

  def make_guess(word_length)
    valid_choice = false
    until valid_choice
      choice = gets.chomp.downcase
      valid_choice = true
      unless (choice.length == 1 || choice.length == word_length) && choice =~ /[a-z1]/
        puts "You must enter one of the following:"
        puts " - a single letter"
        puts " - a #{word_length}-letter word"
        puts " - the number '1' to save your game and exit"
        valid_choice = false
      end
      if @guesses.include?(choice)
        puts "This letter has already been guessed. Try again!"
        valid_choice = false
      end
    end
    @guesses << choice unless choice == "1"
    choice
  end
end
