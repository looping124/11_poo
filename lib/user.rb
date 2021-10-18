require 'byebug'


class User
  attr_accessor :email, :age
  @@user_array = Array.new

  def initialize(email, age)
    @email = email
    @age = age
    @@user_array << self
  end

  def self.display_users()
    return @@user_array
  end

end