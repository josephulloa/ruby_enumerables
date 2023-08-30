def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  # use puts to output each list item "<key>, quantity: <value>" to console
  inventory_list.each {|key,value| puts "#{key}, quantity: #{value}"}
end
fruit = { apples: 1, bananas: 3, oranges: 7 }
display_current_inventory(fruit)

def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1
 guesses.each_with_index {|number, item| puts "Guess ##{item +1} is #{number}"}
end
 guesses = ['cookies', 'cake', 'ice cream']
 display_guess_order(guesses)

def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
   numbers.map {|number| number.abs }
end
 numbers = [0, -7, 14, -21]
 find_absolute_values(numbers)

def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4
  inventory_list.select {|item , value| value <4 }
end
fruit = { apples: 1, peaches: 4, bananas: 3, oranges: 7 }
 find_low_inventory(fruit)

def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson
  word_list.reduce(Hash.new(0)) do |result, vote|
    result[vote]=vote.length
    result
  end
end

 word_list=['cat', 'horse', 'rabbit', 'deer']
find_word_lengths(word_list)

def coffee_drink?(drink_list)
  # use #include? to return true when the drink_list (array) contains the string "coffee" or "espresso"
 drink_list.include?("coffee") ||  drink_list.include?("espresso")
end
 drink_list = ["coffee", "water", "tea"]
  puts coffee_drink?(drink_list)

def correct_guess?(guess_list, answer)
  # use #any? to return true when any element of the guess_list (array) equals the answer (number)
guess_list.any? {|guess| guess== answer}
end
guess_list = [2, 3, 4, 5]
answer = 5
 correct_guess?(guess_list, answer)

def twenty_first_century_years?(year_list)
  # use #all? to return true when all of the years in the year_list (array) are between 2001 and 2100
  year_list.all? {|year| year >=2001 && year <= 2100}
end
year_list = [2001, 2002, 2099, 2100]
 puts twenty_first_century_years?(year_list)

 def correct_format?(word_list)
  # use #none? to return true when none of the words in the word_list (array) are in upcase
  word_list.none? {|word| word == word.upcase}
end
word_list = ["Pepsi", "Coke", "Dr. Pepper"]
correct_format?(word_list)

def valid_scores?(score_list, perfect_score)
  # use #one? to return true when only one value in the score_list (hash) is equal to the perfect_score (number)
  score_list.one?{|score_list, value| value == perfect_score }
end
score_list = { easy_to_read: 10, uses_best_practices: 8, clever: 7 }
perfect_score = 10
valid_scores?(score_list, perfect_score)