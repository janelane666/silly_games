require_relative "touche"
require_relative "joueur"

class Grille

	attr_accessor :touche_array

	def initialize

		@case1 = Touche.new("A1", "a1")
		@case2 = Touche.new("A2", "a2")
		@case3 = Touche.new("A3", "a3")
		@case4 = Touche.new("B1", "b1")
		@case5 = Touche.new("B2", "b2")
		@case6 = Touche.new("B3", "b3")
		@case7 = Touche.new("C1", "c1")
		@case8 = Touche.new("C2", "c2")
		@case9 = Touche.new("C3", "c3")

		@touche_array = [@case1, @case2, @case3, @case4, @case5, @case6, @case7, @case8, @case9]
	end

end
