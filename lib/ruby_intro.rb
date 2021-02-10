# When done, submit this entire file to the autograder.
# ruby intro Part 1

#defines sum method
def sum(arr)
#checker if the array is empty return 0
if arr.length==0
return 0
else
#otherwise, if the array is not empy total up all the values in the array and return the sum
sum=0
for x in arr
sum+=x
end
return sum
end
end

#define the set of numbers to add in the array
numbers_to_add= [1, 2, 3,4,5,10,11,42]
#print and execute the Array on the screen
puts sum(numbers_to_add)

# Part 1.1
#define an array to sum the 2 highest numbers
def max_2_sum(arr)
#check if the array is empty return a value of 0
  if arr.length==0
    return 0
#check to see if the array contains only a single item then return that vaule
  elsif
      arr.length==1
    return arr[0]
  end
#otherwrise sort it permanently then total of the 2 highest numbers
  arr=arr.sort!
  return arr[-1]+arr[-2]
end

#define the numbers
maximum_numbers=[13453,0,1,10,15,56,62,99]
#display the results on the screen
puts max_2_sum(maximum_numbers)

# Part 1.2
##define the method for sum_to_n
def sum_to_n?(arr, n)
#use the permuation array function to simplify code  https://www.geeksforgeeks.org/ruby-array-permutation-function/ and write it using shorthand operators
# notes on .zero? https://www.rubysteps.com/what-rubys-zero-method-can-teach-you-about-oop
# notes on .empty? https://www.geeksforgeeks.org/ruby-string-empty-method/
  if n.zero? or arr.empty?
  return false 
  end
  arr.permutation(2).any? {|num1,num2| num1+num2==n} 
end
#declare the values (define them) using ruby shorcuts https://www.learneroo.com/modules/117/nodes/679
data,number=[5,10,15,20],25
#Use a variable to test the sum_to_n method and to hold the result
outcome=sum_to_n?(data,number)
#show the output results
puts "The outcome is: #{outcome}"

# Part 2

#Part 2.0
#define hello method that takes a string representing a name and returns the string "Hello, " concatenated with the name
def hello(name)
  greeting='Hello, '
  return greeting+name
end

person_to_greet=String.new('James Bond',encoding:'ASCII',capacity:100)
puts hello(person_to_greet)

#Part 2.1

#Define a method starts_with_consonant?(s) that takes a string and returns true if it starts with a consonant and false otherwise.
#(For our purposes, a consonant is any letter other than A, E, I, O, U.) NOTE: be sure it works for both upper and lower case and for nonletters
#uses character matching via ruby-regex https://www.rubyguides.com/2015/06/ruby-regex/
def starts_with_consonant? s
  if s.start_with? 'b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z','B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','W','X','Y','Z'
      return true
  else
      return false
  end

end

word_to_check=('We hold these truths to be self-evident, that all men are created equal.')
puts "The Outcome is: #{starts_with_consonant? (word_to_check)}"



def binary_multiple_of_4? s
if  s=~/^[01]0*1*/ then  
s="0b"+s                         
s=Integer(s)                     
if s%4==0 then return true end
end
 
return false
end

number="10000000"
puts  binary_multiple_of_4? (number)




# Part 3
class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn,price)
    @isbn=isbn
    @price=price
    if isbn.empty?
      raise ArgumentError
    end
    if price<=0
      raise ArgumentError
    end
    def price_as_string
      format("$%.2f", @price)
    end
  end
end

new_book=BookInStock.new("0012121234",12)

puts ("SBN=#{new_book.isbn} Price =#{new_book.price_as_string}")
