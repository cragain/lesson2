# Loan Calculator

#Ask user for loan amount in whole dollars, the interest rate as an integer too, and how many years and months.
#Convert the interest rate to a monthly rate, and the loan duration to months.
#Once we have the input, use formula 1 to calculate the payment
#Use formula 2 to calculate remaining loan balance
#This all has to loop after each payment, so we can get the full table of payments and loan balance
#The payment will be the same, but the loan balance will drop

def prompt(message)
  puts "=> #{message}"
end




puts "Welcome to Loan Calculator! Press enter to get started..."
gets.chomp

  loan_amount = ''
  loop do
    puts "What is the loan amount (please use whole dollars ex: $100,000)"
    loan_amount = gets.chomp.to_f
    
    if loan_amount <= 0
      prompt("That is not a valid number")
    else break
    end  
  end


  interest_rate_annual = ''
  loop do
    puts "Good, now what is the interest rate you are getting?"
    interest_rate_annual = gets.chomp.to_f

  
    if interest_rate_annual <= 0
      prompt("That is not a valid number")
    else break
    end
  end

  loan_duration_years = ''
  loop do
    puts "Super, now how many years do you have the loan for?"
    loan_duration_years = gets.chomp.to_i

    if loan_duration_years <= 0
      prompt("That is not going to work, try again...")
    else break
    end
  end

loan_duration_months = loan_duration_years * 12
interest_rate_monthly = interest_rate_annual / 100 / 12

monthly_payment = loan_amount * (interest_rate_monthly * ((1 + interest_rate_monthly) ** loan_duration_months)) / (((1 + interest_rate_monthly) ** loan_duration_months) - 1)
                    

puts "The Loan Duration In Months Is: " + loan_duration_months.to_s
puts "The Monthly Interest Rate Is: " + (interest_rate_monthly * 100).to_s + "%"
puts "The Monthly Payment Is: $" + monthly_payment.round(2).to_s

puts "Your amortization table is below"

loop do
  if loan_amount > 0
    loan_amount = (loan_amount -= monthly_payment)
    puts loan_amount.round(2)
  else break
  end
end


