def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  new_arr = []
  src.each do |foodN|
    new_arr.push("I love #{foodN[0]} and #{foodN[1]} on my pizza")
  end
    return new_arr
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  new_arr = []
  src.each do |num|
    if num[0] < num[1]
      new_arr << num[1]
    else
      new_arr << num[0]
    end
  end
    return new_arr
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  new_arr = []
  src.each do |numbers|
    if (numbers[0] && numbers[1]) % 2 == 0 
      total = numbers[0] + numbers[1] 
      new_arr << total
    end
  end
  return new_arr
end
