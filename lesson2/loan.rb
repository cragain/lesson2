# Loan Calculator

#Ask user for loan amount in whole dollars, the interest rate as an integer too, and how many years and months.
#Convert the interest rate to a monthly rate, and the loan duration to months.
#Once we have the input, use formula 1 to calculate the payment
#Use formula 2 to calculate remaining loan balance
#This all has to loop after each payment, so we can get the full table of payments and loan balance
#The payment will be the same, but the loan balance will drop






puts "Welcome to Loan Calculator! Press enter to get started..."
gets.chomp

puts "What is the loan amount (please use whole dollars ex: $100,000)"
loan_amount = gets.chomp.to_i

puts "Good, now what is the interest rate you are getting?"
interest_rate_annual = gets.chomp.to_f

puts "Super, now how many years do you have the loan for?"
loan_duration_years = gets.chomp.to_i


loan_duration_months = loan_duration_years * 12
interest_rate_monthly = interest_rate_annual / 100 / 12

monthly_payment = loan_amount * (interest_rate_monthly * ((1 + interest_rate_monthly) ** loan_duration_months)) / (((1 + interest_rate_monthly) ** loan_duration_months) - 1)
                    

puts loan_duration_months
puts interest_rate_monthly
puts monthly_payment