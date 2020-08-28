# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/00_player'
require_relative 'lib/01_game'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

player1 = Player.new("Josiane")
player2 = Player.new("Jose")

# la boucle tourne tant que mes 2 joueurs ont encore des points de vie
while player1.life_points > 0 && player2.life_points > 0
	puts " "
	puts "Voici l'etat de chaque joueur :"
	print player1.show_state
	print player2.show_state
	puts " "
	puts "Passons a la phase d'attaque :"
	player1.attacks(player2)
	# ce if resoud le bug qui fait que le joueur 2 soit encore capable d'attaquer alors qu'il n'a plus de points de vie
		if player2.life_points <= 0
			break
		else	
	player2.attacks(player1)
		end
end


human1 = HumanPlayer.new("Loan")

