class Player
	attr_accessor :name, :life_points # les 2 attributs des joueurs

	def initialize(name) # une seule variable necessaire
		@name = name
		@life_points = 10 # car les points par defaut est de 10 pour chaque joueur
	end

	def show_state # affiche l'etat des points de vie du joueur
		puts "#{@name} a #{@life_points} point.s de vie !"
	end

	def gets_damage(loss) # on met comme variable les points perdus
		
		if (life_points - loss) <= 0 # si le joueur perd tous ces points de vie, ce message s'affiche
			puts "Bye bye #{@name} tu as ete tragiquement tue !"
		else # n'affiche rien si le joueur a encore des points de vie
		end
		@life_points = life_points - loss # cela permet de mettre a jour les points de vie
	end

	def compute_damage # perdu d'attribuer un chiffre aleatoire a l'attaque compris entre 1 et 6
		return rand(1..6)
	end

	def attacks(player) # on met en variable le joueur qui va etre attaque
		puts "Attention, le joueur #{self.name} attaque le joueur #{player.name} !!" # self.name renvoie au nom du joueur attaquant, et player.name au nom du joueur attaque 
		loss = compute_damage # on stocke le chiffre aleatoire de l'attaque obtenu dans une variable
		puts "Il lui inflige #{loss} point.s de dommage"
		player.gets_damage(loss) # on fait appel a la methode gets_damage, si le joueur n'a plus de points de vie, on lui dit qu'il est mort
	end

end

class HumanPlayer < Player # on met player comme classe parent de humanplayer pour qu'elle herite de ses proprietes
	attr_accessor :weapon_level # les autres attributs etant deja dans la classe mere, il suffit d'ajouter le nouvel attribut

	def initialize(name)
		super(name) # on met a jour la methode initialize en conservant certains elements de la methode itiniale
		@weapon_level = 1
		@life_points = 100
	end

	def show_state
		puts "#{@name} a #{@life_points} point.s de vie et une arme de niveau #{weapon_level}!"
	end

	def compute_damage
		rand(1..6) * @weapon_level
	end

	def search_weapon
		new_weapon = rand(1..6) 
		puts "Tu as trouve une arme de niveau #{new_weapon}"
		if new_weapon > @weapon_level
			@weapon_level = new_weapon
			puts "Youhou, j'ai une nouvelle arme plus puissante."
		else
			puts "Pff, je garde mon arme"
		end
	end

	def search_health_pack
		health_pack = rand(1..6)
		if health_pack == 1
			puts "Tu n'as rien trouve"
		elsif health_pack > 1 && health_pack <= 5
			@life_points += 50
			if @life_points > 100
				@life_points = 100
			end
			puts "Bravo ! Tu as trouve un pack de +50 points de vie ! Tu as #{@life_points} points maintenant de vie."
		elsif health_pack == 6
			@life_points += 80
			if @life_points > 100
				@life_points = 100
			end
			puts "Wooow ! Tu as trouve un pack de +80 points de vie ! Tu as #{@life_points} points maintenant de vie."
		else
		end	
	end

end
