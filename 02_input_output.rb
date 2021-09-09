# Write a program that accepts someone's name and age, and responds
# as shown here:

# Program is run and outputs:
# "What is your name?"

# User inputs: "Tom"

# Program outputs:
# "Hi Tom! How old are you?"

# User inputs: 40

# Program outputs:
# "Wow! You are 40 years old. Congratulations!"
user_stop = false
while user_stop == false
    puts "What is your name? (You can type stop anytime to exit this program)"
    user_name = gets.chomp.capitalize
    if user_name == 'Stop'
        user_stop = true
    end
    break if user_stop == true


    puts "Hi #{user_name}! How old are you?"
    user_age = gets.chomp.capitalize
    if user_age == 'Stop'
        user_stop = true
    end
    break if user_stop == true


    puts "Wow! You are #{user_age} years old. Congratulations!"
    if user_age.to_i <= 100
        puts "#{user_name}, in #{100 - user_age.to_i} years you will be 100 years old!"
    else 
        puts "#{user_name}, you are super old."
    end
    
end



# Beast mode challenge:
# Ater the above, the program calculates how many years until
# the user is 100 years old and tells the user. For example, for
# our user input above (Tom and 40), after the program outputs 
# "Wow! You are 40 years old. Congratulations!"
# The program also outputs:
# "Tom, in 60 years you will be 100 years old!"
# Our program isn't very nice though, when a user's age is over 100 the program will
# instead output "Tom, you are super old".

# Example 1:

# Program is run and outputs:
# "What is your name?"

# User inputs: "Tom"

# Program outputs:
# "Hi Tom! How old are you?"

# User inputs: 40

# Program outputs:
# "Wow! You are 40 years old. Congratulations!"
# "Tom, in 60 years you will be 100 years old!"

# Example 2:

# Program is run and outputs:
# "What is your name?"

# User inputs: "Tom"

# Program outputs:
# "Hi Tom! How old are you?"

# User inputs: 40

# Program outputs:
# "Wow! You are 40 years old. Congratulations!"
# "Tom, you are super old!"


# Beast mode++ challenge:
# Turn this program into a loop that will repeat these tasks until they type 'stop'
