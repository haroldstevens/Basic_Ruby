# this is a ruby file

#hours in a year
#puts 24 * 365

#age in seconds
#age = 24
#puts age * (8760 * (60 * 60)) 

#puts 'Hello' + 'World'

#my_string = "Hello there,"
#puts my_string


#Inputs and displays firstname and surname
#puts "What's your first name?"
#fname = gets.chomp

#puts "What's your surname?"
#sname = gets.chomp

#puts "Hello #{fname} #{sname}, how are you doing?"


#Input two numbers to add together
#puts "First number?"
#f_num = gets.to_i

#puts "Second number?"
#s_num = gets.to_i

#total = f_num + s_num

#puts "The total is #{total}"

#puts "Name: "
#name = gets.chomp

#puts "Age: "
#age = gets.to_i

#age_in_seconds = age * (8760 * (60 * 60)) 

#puts "Hi #{name}, you have lived for #{age_in_seconds} seconds"


#def print_my_message(fname, sname, age)
	#full_name = fname + ' ' + sname
	#puts full_name + ' is ' + age.to_s + ' years old'
#end

#print_my_message "Harold", "Stevens", 24


#def capital_reversed()
	#puts "Please enter a word: "
	#word = gets.chomp.upcase.reverse
#end

#puts "Your new word is: " + capital_reversed



print "Please enter your name: "
name = gets.chomp

print "Month of birth: "
month = gets.chomp.to_i

print "Year of birth: "
year = gets.chomp.to_i

current_year = Time.now.year

age = current_year - year

if year < 1936 || year > 2010
	puts "Wow! It's great that you can use this computer"
end

if year > 2000
	print "Did you gain permission from your parents to use this computer? [y/n]: "
	answer = gets.chomp
end

if answer == 'y' 
	puts "You have permission to use this"
elsif answer == 'n'
	puts "Get off this computer now!"
end

puts "You are #{age} years old"

