
# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout


require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/event_creator'
# require_relative 'lib/01_poo.rb'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.


#on créé des utilisateurs
toto = User.new("toto@gmail.com", 25)
tata = User.new("tata@gmail.com", 45)
titi = User.new("titi@gmail.com", 2)
riri = User.new("riri@gmail.com", 7)
gugu = User.new("gugu@gmail.com", 6)
zozo = User.new("zozo@gmail.com", 78)

#on créé un evenement
cdm_date_of_start =DateTime.new(2021,10,18,16,00)
cdm_duration = 14 #en jours 
cdm_title ="coupe du monde"
cdm_users = [toto,tata,titi]
cdm_event = Event.new(cdm_date_of_start, cdm_duration, cdm_title, cdm_users)


# cdm_event.postpone(0)
# cdm_event.display_date_of_end
# cdm_event.ispassed?
# puts cdm_event.is_in_less_than_30_minutes?
EventCreator.new
puts "end"