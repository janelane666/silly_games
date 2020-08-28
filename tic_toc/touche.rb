class Touche

	attr_accessor :position, :valeur

	def initialize(position, valeur)

		@position = position
		@valeur = valeur.to_s

	end

end
