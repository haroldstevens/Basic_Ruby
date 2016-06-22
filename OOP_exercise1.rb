require "date"

class Person
  

  attr_accessor :dob, :first_name, :surname
  attr_reader :emails, :phone_number

	def initialize(f_name, s_name, dob = nil)
    @first_name = f_name.capitalize
    @surname = s_name.capitalize
    if dob 
      @dob = Date.parse dob
    end
    @emails = []
    @phone_number = []
  end

  def fullname
    return "#{first_name} #{surname}"
  end

  def add_email(e_mail)
    @emails << e_mail
  end

  def add_phone_number(p_number)
    @phone_number << p_number
  end

  def remove_email(position)
    @emails.delete_at position
  end

  def remove_phone_number(position)
    @phone_number.delete_at position
  end

  def to_s
    puts "#{fullname} was born on #{dob}.\nTheir email addresses are #{emails}.\nTheir phone numbers are #{phone_number}."
  end

  def print_details
    puts ""
    puts "#{fullname}" 
    puts "-" * fullname.length 
    puts ""
    puts "Date of Birth: #{dob.strftime("%d %B %Y")}"
    puts ""
    puts "Email Addresses: "
    @emails.each do |e| 
      puts "- " + e 
    end
    puts ""
    puts "Phone Numbers: "
    @phone_number.each do |p| 
      puts "- " + p 
    end
  end 

end


class FamilyMember < Person

  attr_accessor :relationship

  def initialize(f_name, s_name, dob = nil, relationship="relative")
    @relationship = relationship
    super first_name, surname, dob 
  end
end


class AddressBook < Person

  def initialize
    @entries =[]
  end

  def add(person)
    if person.is_a? Person
      @entries << person
    else
      raise ArgumencdtError, "No"
    end
  end

  def book_list
    puts ""
    puts "Address Book"
    puts "------------"

    @entries.each_with_index do |person, i|
      puts "Entry #{i+1}: #{person.fullname}"
    end
  end
end
