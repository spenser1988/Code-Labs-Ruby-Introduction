# project_1 = "Project ABC"
# funding_1 = 1000
# puts "#{project_1} has $#{funding_1} in funding"
#
# project_2 = "Project LMN"
# project_3 = "Project XYZ"
#
# puts "Projects: \n\t#{project_1} \n\t#{project_2} \n\t#{project_3}"

# Car Dealership #
# car1_model = "Toyota"
# car1_year = 2017
# car1_price = 15000
# car1_mileage = 10000

# car2_model = "Honda"
# car2_year = 2013
# car2_price = 15000
# car2_mileage = 41000

# car3_model = "Kia"
# car3_year = 2009
# car3_price = 8000
# car3_mileage = 100000

# car4_model = "Hyundai"
# car4_year = 2005
# car4_price = 11000
# car4_mileage = 55000

# car5_model = "Nissan"
# car5_year = 2012
# car5_price = 21000
# car5_mileage = 67000
#
# car6_model = "Jeep"
# car6_year = 2014
# car6_price = 35000
# car6_mileage = 72000
#
# car7_model = "Mazda"
# car7_year = 2015
# car7_price = 17000
# car7_mileage = 101000

# finance_1 = 5.5
# finance_2 = 6.5
# finance_3 = 7.5
# finance_4 = 8.5
# finance_5 = 9.5

# duration_1 = 12
# duration_2 = 24
# duration_3 = 36
# duration_4 = 48
# duration_5 = 60
# duration_6 = 72

car1 = ['Toyota', 2017, 15000, 1000]
car2 = ['Honda' , 2013, 15000, 41000]
car3 = ['Kia', 2009, 8000, 100000]
car4 = ['Hyundai', 2005, 11000, 55000]
car5 = ['Nissan', 2012, 21000, 67000]
car6 = ['Jeep', 2014, 35000, 72000]
car7 = ['Mazda',2015,17000,101000]

finance = [5.5, 6.5, 7.5, 8.5, 9.5]

duration = [12, 24, 36, 48, 60, 72]

puts "Codefi Dealership has the following vehicle models: \n #{car1[0]} \n #{car2[0]} \n #{car3[0]} \n #{car4[0]} \n #{car5[0]}"
puts "\nInformation about each vehicle:
  \n#{car1}
  \n#{car2}
  \n#{car3}
  \n#{car4}
  \n#{car5}
  \n#{car6}
  \n#{car7}"

puts "\nFinancial Options Available:
  \n#{finance}"

puts "\nDifferent Payment Durations:
  \n#{duration}"

puts "Let's Calculate Different Scenarios:"
puts "Scenario_1"
puts "=========="
puts "John Doe wants to buy the #{car1[0]} from us"

if ((finance_percentage = finance[0]) && (current_duration = duration[0]))
  monthly_payment = (car1[2]/(finance_percentage.to_i * current_duration));
  puts "John Doe's Monthly Payment will be for #{finance[0]}% APR & #{duration[0]} months: #{monthly_payment}"
elsif ((finance_percentage = finance[1]) && (current_duration = duration[1]))
  monthly_payment = (car1[2]/(finance_percentage.to_i * current_duration));
  puts "John Doe's Monthly Payment will be for #{finance[1]}% APR & #{duration[1]} months: #{monthly_payment}"
elsif ((finance_percentage = finance[2]) && (current_duration = duration[2]))
  monthly_payment = (car1[2]/(finance_percentage.to_i * current_duration));
  puts "John Doe's Monthly Payment will be for #{finance[2]}% APR & #{duration[2]} months: #{monthly_payment}"
elsif ((finance_percentage = finance[3]) && (current_duration = duration[3]))
  monthly_payment = (car1[2]/(finance_percentage.to_i * current_duration));
  puts "John Doe's Monthly Payment will be for #{finance[3]}% APR & #{duration[3]} months: #{monthly_payment}"
else
  monthly_payment = (car1[2]/(finance_percentage.to_i * current_duration));
  puts "John Doe's Monthly Payment will be for #{finance[4]}% APR & #{duration[4]} months: #{monthly_payment}"      
end
