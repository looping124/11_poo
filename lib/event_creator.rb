require 'byebug'
require 'date'

class EventCreator
  def initialize()
    puts "Salut, tu veux créer un événement ? Cool !  "
    puts "Commençons. Quel est le nom de l'événement ?"
    print "> "
    @event_name = gets.chomp
    puts "Super. Quand aura-t-il lieu ? "
    print "année > "
    @event_date_of_start_year = gets.chomp.to_i
    print "mois > "
    @event_date_of_start_month = gets.chomp.to_i
    print "jour > "
    @event_date_of_start_day = gets.chomp.to_i
    print "heure > "
    @event_date_of_start_hour = gets.chomp.to_i

    
    @event_date_of_start = DateTime.new(@event_date_of_start_year,@event_date_of_start_month,@event_date_of_start_day,@event_date_of_start_hour,00)
    puts "Au top. Combien de temps va-t-il durer (en minutes) ? "
    print "> "
    @event_duration_minutes = gets.chomp.to_f
    @event_duration_days =  @event_duration_minutes / 1440
    puts "Génial. Qui va participer ? Balance leurs noms "
    print "> "
    @event_users = gets.chomp
    
    event = Event.new(@event_date_of_start, @event_duration_days, @event_name, @event_users)
  end
end 