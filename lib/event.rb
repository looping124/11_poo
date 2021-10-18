require 'byebug'
require 'date'

class Event 
  attr_accessor :date_of_start, :duration, :title, :users , :date_of_end

  def initialize(date_of_start, duration, title, users)
    @date_of_start = date_of_start
    @duration = duration.to_f
    @title = title
    @users = users
    puts "Création de l'event \"#{title}\", qui débute le" + @date_of_start.strftime(" %d/%m/%Y à %k:%M ") +"pour une durée de #{duration} jours" 
  end


  def ispassed?
    if @date_of_start < Date.today
        puts "L'evenement est passé"
      elsif @date_of_start > Date.today
        puts "L'évenement n'est pas encore passé"
    end
    if @date_of_start.day == Date.today.day
      puts "L'evenement est aujourd'hui"
    end
  end

  def postpone (delay=1)
    @date_of_start = @date_of_start + delay
    puts "L'event est repoussé de #{delay} jours"
    puts "L'event débute donc le" + @date_of_start.strftime(" %d/%m/%Y à %k:%M ")
  end

  def display_date_of_end
  @date_of_end = @date_of_start + @duration
   puts  "La date de fin de cet event est le" + @date_of_end.strftime(" %d/%m/%Y à %k:%M ")
  end

  def is_in_less_than_30_minutes?
  
    Date.today < @date_of_start
  end

end