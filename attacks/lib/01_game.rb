require_relative '00_player'
require 'pry'

class Game
	attr_accessor :human_player, :enemies

	def initialize(human_name)
		@human_player = HumanPlayer.new(human_name)
		player1 = Player.new("Josiane")
		player2 = Player.new("Jose")
		player3 = Player.new("Loan")
		player4 = Player.new("Vico")
		@enemies = [player1, player2, player3, player4]
	end

	def kill_player(player)
		@enemies.delete(player)
		return @enemies = @enemies.delete(player)
	end

	def is_still_going?
		if @human_player.life_points > 0 && @enemies.length > 0
			return true
		else
			return false
		end
	end

	def show_players
		return @human_player.show_state
		return @enemies.length
	end

	def menu_choice(input)

		input = gets.chomp.to_s
		while input != "a" && input != "s" && input != "0" && input != "1" 
		# boucle while pour relancer l'entree si jamais l'utilisateur ne rentre pas une des 4 options
		puts "Nous n'avons pas compris ta saisie, essaie encore"
		input = gets.chomp.to_s

			if input == "a"
				human_player.search_weapon
			elsif input == "s"
				human_player.search_health_pack
			elsif input == "0"
				human_player.attacks(@enemies[0])
				if @enemies[0].life_points <= 0
					kill_player(@enemies[0])
				end
			elsif input == "1"
				human_player.attacks(@enemies[1])
				if @enemies[1].life_points <= 0
					kill_player(@enemies[1])
				end
			elsif
				input == "2"
				human_player.attacks(@enemies[2])
				if @enemies[2].life_points <= 0
					kill_player(@enemies[2])
				end
			elsif input == "3"
				human_player.attacks(@enemies[3])
				if @enemies[3].life_points <= 0
					kill_player(@enemies[3])
				end
			else
			puts "Appuie sur une touche pour continuer"
			gets.chomp
			end
		end

	end
end

binding.pry