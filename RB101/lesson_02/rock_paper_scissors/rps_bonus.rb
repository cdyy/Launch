
VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}.freeze

def prompt(message)
  puts "=> #{message}"
end

def valid_choice?(input)
  VALID_CHOICES.key?(input) || VALID_CHOICES.value?(input)
end

def choice_in_fulltext(input)
  VALID_CHOICES.keys.include?(input) ? VALID_CHOICES[input] : input
end

def win?(first, second)
  win = {
    rock: %w(scissors lizard),
    paper: %w(rock spock),
    scissors: %w(paper lizard),
    lizard: %w(spock paper),
    spock: %w(scissors rock)
  }
  win[:"#{first}"].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

input = ''
choice_prompt = <<-MSG
Choose your move:
    rock -      r
    paper -     p
    scissors - sc
    lizard -    l
    spock -    sp
MSG

prompt('Welcome to Rock Paper Scissors Lizard Spock!')

loop do
  loop do
    prompt(choice_prompt)
    input = gets.chomp.downcase

    break if valid_choice?(input)
    prompt("That's not a valid choice.")
  end

  choice = choice_in_fulltext(input)
  computer_choice = VALID_CHOICES.values.sample

  prompt("You chose #{choice}; computer chose #{computer_choice}")

  display_results(choice, computer_choice)

  prompt('Do you want to play again?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing! Good bye!')
