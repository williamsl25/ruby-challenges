
# Create your own sorting algorithm. (Do NOT use Ruby's .sort method to make this work.)

# For instance:  def sort_array(a) return sorted_array end  

# I will call this method and pass the array in. It must return a sorted array.

a = [3,4,6,1,3,6,7,8,9,2,4,5,6,7,10,146,3,4,7,8,74]

puts a

def sort_array(a)
  array_size = a.count
  x = 0
  b= []

  a.each do |num|
    if num > x
      x = num
    end
  end
  max_num = x
  while b.count < array_size
    a.each do |i|
      if i < max_num 
        max_num = i
      end
    end
    b.push(max_num)
    a.slice!(a.index(max_num))
    max_num = x
  end
  print b
end

sort_array(a)

print a


