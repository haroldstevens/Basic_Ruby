class Person

  attr_accessor :height, :hair_color, :top_color

	def initialize(height, hair_col = nil, top_col = nil)
		@height = height
		@hair_color = hair_col
		@top_color = top_col
	end

  # Instance Methods

  def dance
    return "I'm dancing"
  end

  def sleep 
    return "Zzzzzzzzzzzzzzzzzzz"
  end

  def describe
    return "#{Person} has #{@hair_color} hair, and is wearing a #{@top_color} top"
  end

end


class Baby < Person

def initialize(height, hair_col = nil, top_col = nil)
  @smells = true
  super
end

  def cry
    "Wahhhhhhhhhhhhh"
  end

  def dance
    "I don't dance"
  end
end
