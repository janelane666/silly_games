# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/00_player'
require_relative 'lib/01_game'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

loan = HumanPlayer.new("Loan")
player1 = Player.new("Josiane")
player2 = Player.new("Jose")

enemies = [player1, player2] # on definit un array pour tous les ennemies

puts "   ================================================  "

puts "*  Bienvenue dans ton nouveau jeu de combat prefere  *"
puts "*  ILS VEULENT TOUS QUOI ? ILS VEULENT TOUS MA POOO  *"
puts "*  Pour gagner, sois le dernier survivant good luck  *"

puts "   ================================================  "
puts " "
puts "Appuie sur une touche pour jouer" # on met des gets.chomp pour aerer le jeu
gets.chomp

while (loan.life_points > 0) && (player1.life_points > 0 || player2.life_points > 0)
	# on met une boucle pour relancer les parties, l'humain a le choix d'une action, il se fait attaquer
	# puis on repart dans une autre partie, jusqu'a ce que les ennemies ou l'humain n'est plus de point
	puts loan.show_state

puts "Appuie sur une touche pour continuer"
gets.chomp
puts "   ================================================  "
puts " "
	puts "Quelle action veut-tu effectuer ?"
	puts " "
	puts "a - chercher une meilleure arme"
	puts "s - chercher a se soigner"
	puts " "
	puts "attaquer un joueur en vue :"
	puts " "
	print "0 - " 
	print "#{player1.show_state}"
	print "1 - "
	print "#{player2.show_state}"
	puts " "
	puts "Faites votre choix"
	
	input = gets.chomp.to_s
	while input != "a" && input != "s" && input != "0" && input != "1" 
	# boucle while pour relancer l'entree si jamais l'utilisateur ne rentre pas une des 4 options
		puts "Nous n'avons pas compris ta saisie, essaie encore"
		input = gets.chomp.to_s
	end
	if input == "a"
			loan.search_weapon
			puts " "
	elsif input == "s"
			loan.search_health_pack
			puts " "
	elsif
			input == "0"
			loan.attacks(player1)
			puts " "
	elsif input == "1"
			loan.attacks(player2)
			puts " "
	else
	end
	puts "   ================================================  "
	puts " "
	puts "L'ennemie attaque !"
	puts "Appuie sur une touche pour continuer"
	gets.chomp
	puts " "
	puts "   ================================================  "
	puts " "

	enemies.each do |player| # c'est au tour de l'ennemie qui attaque a tour de role l'humain
		if player.life_points > 0 # si l'ennemi a moins de 0 point, il est mort et ne peut attaquer
			player.attacks(loan)
		else 
			puts "Un mort ne peut attaquer" # message pour lui dire qu'il ne peut attaquer
		end		
	end
end
	puts "   ================================================  "

=begin
	

=end
