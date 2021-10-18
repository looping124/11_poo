require 'byebug'

class Eleve
  attr_accessor :nom

  def initialize (nom)
    @nom = nom
    @notes_array = Array.new
    @test_array = [1,2,3]
  end

  def ajouterNote(note)
     @notes_array << note
  end

  def notes()
    print @notes_array
    puts
  end

  def moyenne()
    @moyenne = @notes_array.sum/@notes_array.size
    puts @moyenne
  end

  def moyenne?()
    @moyenne >=10 
  end


  # def bonjour
  #   puts "bonjour #{@nom}, tu as #{@age} ans"
  #   if isMajeur? then puts "je suis majeur" else puts "je ne suis pas majeur" end
  # end

  # def isMajeur?
  #   @age >= 18 
  # end


end


eleve = Eleve.new("Jean")
eleve.ajouterNote(18)
eleve.ajouterNote(10)
eleve.ajouterNote(2)

eleve.notes
eleve.moyenne
puts eleve.moyenne?
puts eleve.nom
