# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = gets()
# puts(answer)
require 'yaml'
LANGUAGE = 'en'
MESSAGES = YAML.load_file('calculator_messages.yml')

# TODO: Refactor code:
# def prompt(key)
#   message = messages(key, LANGUAGE)   # make sure the "messages" method is declared above this line
#   Kernel.puts("=> #{message}")
# end
# now you can just do:
# prompt('welcome')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

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

def valid_number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

prompt(format(messages('greeting', LANGUAGE), name: name))

loop do # main loop
  number1 = ''
  loop do
    prompt(messages('first_number', LANGUAGE))
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt(messages('invalid_number', LANGUAGE))
    end
  end

  number2 = ''
  loop do
    prompt(messages('second_number', LANGUAGE))
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt(messages('invalid_number', LANGUAGE))
    end
  end

  prompt(messages('operator_prompt', LANGUAGE))

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('operator_error', LANGUAGE))
    end
  end

  prompt(format(messages('operator_action', LANGUAGE), operator_action: operation_to_message(operator)))

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt(format(messages('result', LANGUAGE), result: result))

  prompt(messages('perform_again', LANGUAGE))
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(messages('thanks', LANGUAGE))
