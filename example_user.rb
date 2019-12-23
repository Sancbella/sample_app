class User
  attr_accessor :first_name, :last_name, :full_name, :email

  def initialize(attributes = {})
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @full_name = attributes[:full_name]
    @email = attributes[:email]
    name_split
  end
  def name_split
    self.full_name = "#{@first_name} #{@last_name}"
  end
  def formatted_email
    "#{@full_name} <#{@email}>"
  end
end

puts "We're Live!"
user = User.new
# user.full_name = "Red"
user.first_name = "Bob"
user.last_name = "Hoboken"

puts user.full_name
puts user.last_name
puts user.first_name

## Why won't it show the full name??