require 'yaml'
MESSAGES = YAML.load_file('config.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(input)
  valid_integer?(input) || valid_float?(input)
end

def valid_integer?(input)
  input.to_i.to_s == input
end

def valid_float?(input)
  input.to_f.to_s == input
end

def valid_restart?(input)
  input.casecmp?('yes') || input.casecmp?('no')
end

def retrieve_loan
  input = ''
  prompt(MESSAGES['retrieve_loan'])
  loop do
    print '£'
    input = gets.chomp
    break if valid_number?(input) && input.to_f > 0
    prompt(MESSAGES['invalid_loan'])
  end
  input
end

def retrieve_apr
  input = ''
  prompt(MESSAGES['retrieve_apr'])
  loop do
    input = gets.chomp
    break if valid_number?(input) && input.to_f >= 0
    prompt(MESSAGES['invalid_apr'])
  end
  input
end

def retrieve_duration
  input = ''
  prompt(MESSAGES['retrieve_duration'])
  loop do
    input = gets.chomp
    break if valid_integer?(input) && input.to_f > 0
    prompt(MESSAGES['invalid_duration'])
  end
  input
end

def retrieve_monthly_payment(loan, monthly_rate, duration)
  if monthly_rate == 0.0
    loan.to_f / duration.to_i
  else
    loan.to_f * (monthly_rate / (1 - (1 + monthly_rate)**-duration.to_i))
  end
end

prompt(MESSAGES['welcome'])

loan = ''
apr = ''
duration = ''
restart = ''

loop do
  loan = retrieve_loan
  apr = retrieve_apr
  duration = retrieve_duration
  monthly_rate = apr.to_f / 12

  monthly_payment = retrieve_monthly_payment(loan, monthly_rate, duration)

  prompt(MESSAGES['processing_message'])

  prompt(
    format(
      MESSAGES['result_message'],
      loan: loan,
      duration: duration,
      apr: apr + '%',
      monthly_payment: format('%.2f', monthly_payment)
    )
  )

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
