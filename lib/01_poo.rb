require 'pry'
require 'byebug'

class User
  attr_writer :email
  @@user_count = 0

  def initialize(email_to_save)
    @email=email_to_save
    @@user_count = @@user_count +1
    puts "On envoie un email de Bienvenue !!!"
  end


  def greet
    puts "bonjour monde"
  end

  def say_hello_to_someone(first_name)
    puts "Bonjour, #{first_name}"
  end

  def show_itself
    print "voici l'isntance : "
    puts self
  end

def update_email(email_to_update)
  @email = email_to_update
end

def read_email
  return @email
end

def count
  return @@user_count

end

end
julie = User.new("julie@julie.com")
jean = User.new("jean@jean.com")
private


byebug
puts "end"