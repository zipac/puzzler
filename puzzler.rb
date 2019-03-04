# Ruby Puzzler: Can you untease these teasers?

class Puzzler
  def initialize
    welcome_screen

    #Starter puzzle: Puzzles begin here
    caesar
    honey
    butter
    code
    animal
    webpage

    #Final line in game (directs to win condition on website)
    puts 'Once you think you\'ve sussed it, click the honeycomb on the homepage and enter your final answer, starting with #'
  end

  def welcome_screen
    puts 'Ruby Puzzler: A collection of Puzzles in Ruby'
    puts ''
    puts 'Welcome. Can you untease these teasers?'
    puts ''
    puts 'Do you wish to start? (y/n)'

    #Allow user to abort game instead of starting
    abort("Thanks for playing.") if get_user_input == "n"

    puts 'Great. Enjoy the game, and if you need help, just enter \'hint\'.'
  end

  def caesar
    puts 'To start off, here is a simple question.'
    puts 'What was the name of the person who said the following (6 letters):'
    puts 'knfjan cqn rmnb xo vjalq' #Beware the ides of March
    check("julius", "Say you search a simple cipher. Find the forename.")
  end

  def honey
    puts 'Something so acrid from humans and as old as history is as sweet as sugar. (5)'
    check("honey", "You won't bee-lieve this.")
  end

  def butter
    puts 'The colour of a marigold,'
    puts 'A flavour often fake.'
    puts 'The vegans despise me,'
    puts 'You use me to bake.'
    puts 'What am I? (6)'
    check("butter", "I can't believe it's not-")
  end

  def code
    puts 'SERIAL ENIGMA BRO MORSE MACHINE SOURCE GENETIC KONAMI (4)'
    check("code", "You can categorically believe these words are related.")
  end

  def animal
    puts 'Can you find the animal hidden by an Italian? (8)'
    puts 'ardmvtjafqvqreeuccmtkcdovxgakm'
    check("aardvark", "You can believe I'm not fibbing about the animal in this sequence.")
  end

  def webpage
    puts 'Great job!'
    sleep(2)
    puts 'Now it\'s time to put it all together. Ignoring the starter puzzle, go to [1][2][3].com/[4] and admire my hue.'
  end

  # Base for the entire game. Takes the user input, gives a hint, a pass or an error message
  def check(flag, hint, message = "I'm afraid that is incorrect. Please try again.")
    input = get_user_input

    while input != flag
      if input == "hint"
        puts hint
        input = get_user_input
      else
        puts message
        input = get_user_input
      end
    end
    puts 'That\'s correct!'
    puts " "
  end

  def get_user_input
    gets.chomp.downcase
  end
end

#Run the game
Puzzler.new
