require_relative "touche"
require_relative "grille"



class Affichage

  	attr_accessor :grille1

	def initialize

		@grille1 = Grille.new
		self.affiche

	end

  def affiche
		puts "-------------------"
    	puts "| #{@grille1.touche_array[0].valeur} | #{@grille1.touche_array[1].valeur} | #{@grille1.touche_array[2].valeur} |" 
		puts "-------------------"
		puts "| #{@grille1.touche_array[3].valeur} | #{@grille1.touche_array[4].valeur} | #{@grille1.touche_array[5].valeur} |"
		puts "-------------------"
		puts "| #{@grille1.touche_array[6].valeur} | #{@grille1.touche_array[7].valeur} | #{@grille1.touche_array[8].valeur} |"
		puts "-------------------"
  end

  
end

