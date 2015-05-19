# Instructions (using methods)

# Your task is to write a command line calculator application that has two settings, (b)asic and (a)dvanced

# First you will need to ask the user for which calculator they want to use
# Then you will need to ask the user for the numbers to operate on.
# Then you need to work out what to do with the numbers, depending on what operation they choose:


puts "Would you like to use the (b)asic, (a)dvanced, (bmi), or (m)ortgage calculator?: "
answer = gets.chomp.downcase

case answer
  when "b"
    puts "Pick an operation ('+', '-', '*', or '/'): "
    operator = gets.chomp
    puts "Pick a number: "
    first_number = gets.to_f
    puts "Pick a second number: "
    second_number = gets.to_f
      if operator == '+'
        final_answer = first_number + second_number
        puts "The answer is #{final_answer}"
      elsif operator == '-'
        final_answer = first_number - second_number
        puts "The answer is #{final_answer}"
      elsif operator == '*'
        final_answer = first_number * second_number
        puts "The answer is #{final_answer}"
      elsif operator == '/'
        final_answer = first_number / second_number
        puts "The answer is #{final_answer}"
      end
  when "a"
    puts "Pick a function between (p)ower or (sq)uare root:"
    function = gets.chomp
      if function == 'p'
        puts "Pick a number: "
        first_number = gets.to_f
        puts "Pick a second number: "
        second_number = gets.to_f
        final_answer = first_number ** second_number
        puts "The answer is #{final_answer}"
      elsif function == 'sq'
        puts "Pick a number: "
        first_number = gets.to_f
        final_answer = Math.sqrt(first_number)
        puts "The answer is #{final_answer}"
      end 
  when "bmi"
    puts "Would you like to use the (i)mperial or (m)etric system?"
    system = gets.chomp
      if system == "i"  
        puts "Please enter your weight in pounds:"
        weight = gets.to_f
        puts "Please enter your height in inches:"
        height = gets.to_f
        bmi = ((weight*703) / (height*height)).ceil
        puts "Your BMI is #{bmi}"
      elsif system == "m"
        puts "Please enter your weight in kilograms:"
        weight = gets.to_f
        puts "Please enter your height in meters:"
        height = gets.to_f
        bmi = (weight / (height*height)).ceil
        puts "Your BMI is #{bmi}"
      end
    when "m"
      puts "What is the principal of the loan?"
      principal = gets.to_f
      puts "What is your interest rate?"
      interest_rate = gets.to_f
      puts "How many payments do you have?"
      payments = gets.to_f
      monthly_payment = (principal * (interest_rate*(1 + interest_rate)**payments) / ((1 + interest_rate)**payments - 1)).ceil
      puts "Your monthly payments are $#{monthly_payment} per month"  

end





