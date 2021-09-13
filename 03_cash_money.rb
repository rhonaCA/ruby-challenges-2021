# Write a method called calculate_tax_payable which takes a single argument called income.

# Use the tax brackets shown below to calculate tax payable on income,
# and then calculate the tax payable as a percentage of the income.
# The results should be returned in a hash containing a key called percentage_of_income
# and a key called tax_payable.

# Tax brackets:
# $0 – $18,200 Nil
# $18,201– $37,000 19c for each $1 over $18,200
# $37,001 - $87,000 $3,572 plus 32.5c for each $1 over $37,000
# $87,001 - $180,000 $19,822 plus 37c for each $1 over $87,000
# $180,001 and over $54,232 plus 45c for every $1 over $180,000
# Example hash output from a call to calculate_tax_payable(180101.00)

# {:percentage_of_income=>30.13722855508853, :tax_payable=>54277.45}

# After correctly returning the right amounts, make a new method called save_to_file which
# takes a single argument which is the hash returned by calculate_tax_payable

# this method is supposed to save to a text file the person's name,
# their percentage_of_income and their tax_payable in an easy to read format.

def calculate_tax_payable(income)
  # puts "What's your name?"
  # name = gets.chomp.capitalize
  # puts "What is your annual income this year?"
  # income = gets.chomp.to_i

  tax_payable = case income
                when 0..18_200
                  0
                when 18_201..37_000
                  (income - 18_200) * 0.19
                when 37_001..87_000
                  3572 + ((income - 37_000) * 0.325)
                when 87_001..180_000
                  19_822 + ((income - 87_000) * 0.37)
                else
                  54_232 + ((income - 180_000) * 0.45)
                end

  tax_info = {}
  # tax_info[:name] = name
  tax_info[:percentage_of_income] = ((tax_payable / income) * 100)
  tax_info[:tax_payable] = tax_payable

  tax_info
end

def save_to_file(tax_info)
  tax_info.each do |key, val|
    puts "#{key}: #{val}"
  end
end

save_to_file({ percentage_of_income: 0, tax_payable: 1000 })
save_to_file(calculate_tax_payable(10_000))
save_to_file(calculate_tax_payable(80_000))
