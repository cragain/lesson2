require 'pry'

# local variables
# 1

# because the variable was initialized before the loop, the variable str was available
# in the loop, and the output of the block availabe to the puts method outside the block.
# The loop block simply changed the value of str to 2.

#2

# Since the local variable was not initialized, the variable is undefined when puts is called.  

#3

# No, not with certainty.  The variable str would need to be initialized, you would have 
# to review the code to be sure.

#4

# methods have their own scope, and local variables initialized outside of the method
# remain undifined to the method.

#5 

# Here the puts str call is simply printing the local variable str that was initialized
# at the top.  Ruby always returns the last line of code, unless a return has been called
# before that.  The two str variables are different.  the top str variable is a local variable
# and the str in the method is a variable inside the method.

#6

# This is showing variables as pointers.  in b = a, both variables are pointing to
# a value of "hello".  When a is mutated with "world", b continues to point at the old
# value "hello".  Now if before a was mutated, if it would have not been pointed at "hi"
# I think b would have changed, but when a went to "hi", new memory was used and the <<
# call only changed a.

#7

# There are 3 variables and 5 objects.  The objects are hello and world, plus the variables
# The variables are just a, b, and c.  Everything in ruby is an object.

# mutating methods

#1

# methods do not modify arguments passed into them unless the action in the method
# mutates the caller

#2

# <<  is an action that does mutate the caller, so when greeting is called,
# it is the mutated version

#3 

# In this version, the argument is defined as "hi" in the method, so when you call the method
# it will return "hi world" regardless of what the argument is.  Then when the variable
# greeting is initialized, that is what the puts method is calling later.  Yes in between
# the change method is called, but that still returns "hi world".  Then puts is just 
# printing the greeting value "hello"

#4

# The method still returns "hi world" regardless of the value of the argument
# the third line defines param as "hi" then adds "world".  The variable greeting
# is initialized in line 8, the method call just returns "hi world", but the last line
# of the program which is what matters because the last line is always the return, 
# calls the variable greeting with an output of "hello".

# working with collections

#1 

# I use map on an array when I need to iterate through an array and perform some action
# on each value.  This returns me a new array and new values based on what I asked be
# done to each value.

#2

# I think of select as a method when I need to sort through an array.  Like figuring 
# out if numbers are negative or positive, or some kind of binary action and getting
# a new array of just those values.

#3

# the difference is in the '+' and the '+=' of course.  The + is direct addition
# like n + 1 =
# the += is a little different in that it is more like n = n + 1.  So in the first pass
# the value (1 +1 is 2), (2 + 1 is 3).  In the second code, it really is (1+1 is 2) +1) is 3.  The 
# second code is building n each time it comes through.  I would say the first is preferred, it is more 
# controlled in that you don't have assignment of values to variables all the time..

#4 

# The > method returns booleans as an output. so the map call is showing output of booleans.

#5

# The value of arr in nil.  This is because the last line of code in the block is 
# puts n.  Puts n returns nil as puts does all the time.

#6

# the select method is looking values in the array that return a boolean of true for the block.
# arr = [1, 2, 3] because the block of n +2 does return true for each of them.  Just
# not what the user was hoping for.

#7

# arr is an empty array here.  Calling puts on n returns a nil value, which is not
# truthy and means none of the values in the array qualify for the select method.  That leaves
# arr empty.




