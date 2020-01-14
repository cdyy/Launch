require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(input)
  valid_integer?(input) || valid_float?(input)
end

def valid_integer?(input)
  input.to_i.to_s == input && input.to_i > 0
end

def valid_float?(input)
  input.to_f.to_s == input && input.to_i > 0
end

def valid_restart?(input)
  input.casecmp?('yes') || input.casecmp?('no')
end

def monthly_payment(loan, monthly_rate, duration)
  result = loan * (monthly_rate / (1 - (1 + monthly_rate)**-duration))
  result = '%.2f' % result
end

prompt(MESSAGES['welcome'])

loan = ''
apr = ''
duration = ''
restart = ''

loop do
  prompt(MESSAGES['request_loan'])
  loop do
    print '£'
    loan = gets.chomp
    break if valid_number?(loan)
    prompt(MESSAGES['invalid_loan'])
  end

  prompt(MESSAGES['request_apr'])
  loop do
    apr = gets.chomp
    break if valid_number?(apr)
    prompt(MESSAGES['invalid_apr'])
  end

  prompt(MESSAGES['request_duration'])
  loop do
    duration = gets.chomp
    break if valid_integer?(duration)
    prompt(MESSAGES['invalid_duration'])
  end

  prompt(MESSAGES['processing_message'])

  result = monthly_payment(loan.to_f, apr.to_f / 12, duration.to_i)
  prompt("For borrowing £#{loan} over #{duration} months at #{apr}%, 
    your monthly payment will be £#{result}.")
  
  prompt(MESSAGES['restart?'])

  loop do
    restart = gets.chomp
    break if valid_restart?(restart)
    prompt(MESSAGES['invalid_restart'])
  end

  break if restart.casecmp?('no')
  prompt(MESSAGES['restart_yes'])
end

prompt(MESSAGES['restart_no'])
