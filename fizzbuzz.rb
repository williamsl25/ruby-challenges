# FizzBuzz

# Loop through the numbers from 1-100. If the number is divisible by 3, display Fizz. If it's divisible by 5, display Buzz. If it's divisible by both, display FizzBuzz. If it's not divisible by any, display the number.

# Result:  1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz, 16... 

#1)
  array1 = []
  x = 1

  while x < 101
    array1.push(x)
    x += 1
  end

  print array1
# will return # 1-100

# 2)
    11.times do |num|
      if num % 3 == 0
        print "fizz"
      else
        print num
      end
    end
# will return:
  # fizz
  # 1
  # 2
  # fizz
  # 4
  # 5
  # fizz
  # 7
  # 8
  # fizz
  # 10

# 3)
    11.times do |num|
      if num % 5 == 0
        print "Buzz"
      else
        print num
      end
    end
# will return
    # Buzz
    # 1
    # 2
    # 3
    # 4
    # Buzz
    # 6
    # 7
    # 8
    # 9
    # Buzz
# 4)
      21.times do |num|
        if num % 5 == 0 && num % 3 == 0
          print "FizzBuzz"
        elsif num % 3 == 0
          print "Fizz"
        elsif num % 5 == 0
          print "Buzz"
        else
          print num
        end
        if num < 100
          print ', '
        else puts ""
        end
      end
#  will return:
# FizzBuzz, 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16, 17, Fizz, 19, Buzz, %