# get loan amount
# get annual percentage rate
# get loan duration in years
# calculate monthly interest rate
# calculate duration in months
# output monthly payment
require 'pry'

def prompt(message)
  puts("=> #{message}")
end

def integer?(input)
  # could also do input.to_i.to_s == input but something with a
  # leading 0 ("00", "01", etc) will return false
  Integer(input)
rescue ArgumentError
  false
end

def float?(input)
  # could also do input.to_f.to_s == input but something with a
  # leading 0 ("00", "01", etc) will return false
  Float(input)
rescue ArgumentError
  false
end

prompt('Welcome to a mortgage/car loan calculator!')

loop do
  loan = ''
  loop do
    prompt('Enter the loan amount:')
    loan = gets.chomp

    if float?(loan) && loan.to_f > 0
      break
    else
      prompt('Invalid format. The value is not a number or is negative')
    end
  end

  apr = ''
  loop do
    prompt('Enter APR:')
    apr = gets.chomp

    if float?(apr) && apr.to_f > 0
      break
    else
      prompt('Invalid format. The value is not a number or is negative')
    end
  end

  duration_in_years = ''
  loop do
    prompt('Enter loan duration in years:')
    duration_in_years = gets.chomp

    if integer?(duration_in_years) && duration_in_years.to_i > 0
      break
    else
      prompt('Invalid format. The value is not a number or is negative')
    end
  end

  loan = loan.to_f
  apr = apr.to_f / 100
  monthly_interest_rate = apr / 12
  duration_in_months = duration_in_years.to_i * 12

  monthly_payment = loan * (monthly_interest_rate /
    (1 - (1 + monthly_interest_rate)**(-duration_in_months)))

  prompt("The monthly payment is $#{format('%02.2f', monthly_payment.round(2))}")
  prompt('Would you like to perform another calculation? (yN)')
  repeat = gets.chomp
  break unless repeat.downcase.start_with?('y')
end

prompt('Thank you for using the mortgage/car loan calculator!')
