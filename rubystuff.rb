# this is another ruby file

#names = ['James', 'Harold', 'Chris', 'Jeremy']

#puts "These are the names of the first list:"
#puts names
#end_program = false

#while end_program == false
  #print "What is your name? "
  #add_name = gets.chomp

  #if add_name == "exit"
    #end_program = true
  #else
    #names << add_name
    #puts "Fine, I will add your name onto the list:"
    #puts names
  #end
#end

#require 'pry'

#user_details = {}

#print "Please enter your name: " 
#user_details[:name] = gets.chomp.capitalize

#print "D.O.B.: "
#user_details[:date_of_birth] = gets.chomp
#binding.pry
#print "How old are you? "
#user_details[:age] = gets.chomp.to_i

#print "What is your height: "
#user_details[:height] = gets.chomp.to_i

#puts 'Relatives (comma-separated list): '
#user_details[:relatives] = gets.chomp.split(",")

#user_details.each do |k,v|
    #puts "Key: #{k}, Value: #{v}"
#end


def ask_recursively(question)
  puts question
  reply = gets.chomp
  if reply == 'yes'
    true
  elsif reply == 'no'
    false
  else
    puts 'Please read what it says properly, yes or no'
    ask_recursively question
  end
end

ask_recursively "Is my name Harold?"

