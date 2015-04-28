#BMI Status
  # < 18.5 Underweight
  # 18.5 - 24.9 Normal
  # 25.0 - 29.9 Overweight
  # >= 30.0 Obese

puts "What is your weight in lbs?"
weight = gets.chomp.to_f
puts "What is your height in inches?"
height = gets.chomp.to_f

bmi_calc = ((weight / (height**2)) * 703).round(2)

puts "Your BMI is #{bmi_calc}"

if bmi_calc < 18.5
  puts "You are underweight!"
elsif bmi_calc > 18.5 && bmi_calc < 25
  puts "You are normal"
elsif bmi_calc < 30
  puts "You are overweight"
else
  puts "You are obese"
end