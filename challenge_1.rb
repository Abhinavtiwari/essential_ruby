# ===========
# CHALLENGE 1
# ===========

# Suppose we are building a loan payment calculator.

# Define a method called "pmt" which will accept three arguments:
#  - interest rate
#  - number of payments
#  - principal value of loan
# The method should return the size of each payment given these three things.
# Before we can teach the computer how to automate a task,
#   we usually have to do some research on how the task is done:
#   http://en.wikipedia.org/wiki/Mortgage_calculator

# =========================================
# Your code to define the method goes here.
# =========================================

def pmt(interest, number_payments, principal)
numerator = principal * interest * ((1 + interest)**number_payments)
denominator = ((1+interest)**number_payments)-1
return (numerator.to_f/denominator.to_f).round.to_f
end

puts "Your monthly payment will be #{pmt(0.01, 60, 30000)}."
