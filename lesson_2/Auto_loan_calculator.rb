
def prompt(message)
 puts("=> #{message}")
 end

def valid_number?(num)
num.to_i != 0
end

loop do
   prompt("Welcome to Auto Loan Calculator!")

   loan_amount =''
  loop do
     prompt("How much is your loan?")
     loan_amount = gets.chomp
     if valid_number?(loan_amount)
       break
     else
       puts "please enter a valid number above zero"
     end
   end

  interest_rate = ''
  loop do
   prompt("What is your interest rate?")
   interest_rate = gets.chomp
   if valid_number?(interest_rate)
     break
   else
     puts "please enter a valid number above zero"
   end
  end

  loan_duration = ''

  loop do
    prompt("What is the loan duration in years?")
    loan_duration = gets.chomp
    if valid_number?(loan_duration)
      break
    else
      puts "please enter a valid number above zero"
    end
  end

  annual_interest = interest_rate.to_f / 12
  monthy_interest = annual_interest / 100
  months = loan_duration.to_i * 12

  monthly_payment = loan_amount.to_f * (monthy_interest / (1 - (1 + monthy_interest)**(-months)))

  prompt("Your monthly interest payment is #{monthly_payment}")

  prompt("Would you like to calculate another loan? Press 'Y' if yes")
  answer = gets.chomp
  break if answer.downcase != 'y'
end
