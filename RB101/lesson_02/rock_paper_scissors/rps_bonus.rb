VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}.freeze

score = {
  player: 0,
  computer: 0,
  round: 1
}

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

def display_score(score = {})
  display_score_prompt = <<-MSG
=================================
Round #{score[:round]}
You(#{score[:player]}) vs Computer(#{score[:computer]})
=================================
MSG
  puts display_score_prompt
end

def display_grand_winner(score = {})
  if score[:player] == 5
    prompt('The match is over! The grand winner is YOU! ^_^')
  elsif score[:computer] == 5
    prompt('The match is over! The grand winner is COMPUTER!')
  end
end

def reset_score(score = {})
  score[:player] = 0
  score[:computer] = 0
  score[:round] = 1
end

def update_score(player, computer, score = {})
  if win?(player, computer)
    score.update(score) { |k, v| k == :player ? v + 1 : v }
  elsif win?(computer, player)
    score.update(score) { |k, v| k == :computer ? v + 1 : v }
  end
end

input = ''
choice_prompt = <<-MSG
Choose your move:
    rock -      r
    paper -     p
    scissors - sc
    lizard -    l
    spock -    sp    (Enter 'exit' to exit game)
MSG

puts "\n\n\~*Welcome to Rock Paper Scissors Lizard Spock!*~\n\n"
prompt("When either the player or computer reaches
  five wins, the match is over, and the winning
  player becomes the grand winner.")

loop do
  reset_score(score)
  display_score(score)

  loop do
    score[:round] += 1
    loop do
      prompt(choice_prompt)
      input = gets.chomp.downcase

      break if valid_choice?(input) || input == 'exit'
      prompt("That's not a valid choice.")
    end

    break if input == 'exit'

    choice = choice_in_fulltext(input)
    computer_choice = VALID_CHOICES.values.sample
    prompt("You chose #{choice}; computer chose #{computer_choice}")

    display_results(choice, computer_choice)
    update_score(choice, computer_choice, score)
    display_score(score)
    break if score[:player] == 5 || score[:computer] == 5
  end

  break if input == 'exit'

  display_grand_winner(score)

  prompt("Do you want to play again? Enter 'y' for yes.")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing! Good bye!')
