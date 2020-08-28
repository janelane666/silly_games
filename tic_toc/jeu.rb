require_relative "joueur"
require_relative "affichage"
require_relative "touche"

class Jeu

    def initialize

        system "clear"
        puts "Bienvenue dans le jeu de morpion de Loan et Wara"
        #sleep 1
        #system "clear"

        puts "Joueur 1, comment tu t'appelles ?"
        prenom1 = gets.chomp
        @joueur1 = Joueur.new(prenom1, "x")
        puts "Salut #{@joueur1.nom}, tu seras #{@joueur1.signe}"
        sleep 1
        system "clear"

        puts "Joueur 2, comment tu t'appelles ?"
        prenom2 = gets.chomp
        @joueur2 = Joueur.new(prenom2, "o")
        puts "Salut #{@joueur2.nom}, tu seras #{@joueur2.signe}"
        sleep 1
        system "clear"

        @affichage1 = Affichage.new
        puts "#{@joueur1.nom} = x"
        puts "#{@joueur2.nom} = o"
    end 

    def tour
    
        puts "#{@joueur1.nom}, à toi de jouer"
        valide = false

        while valide == false do
            choix = gets.chomp.to_s
            @affichage1.grille1.touche_array.each do |touche|             
                if touche.valeur == choix && choix != "x" && choix != "o"
                    touche.valeur = "x"
                    valide = true
                    @affichage1.affiche
                end
            end
            if valide == false
            puts "Veuillez rentrer une touche valide"
            end
        end

        self.victory

        puts "#{@joueur2.nom}, à toi de jouer"
        valide = false
        while valide == false do
            choix = gets.chomp.to_s
            @affichage1.grille1.touche_array.each do |touche|             
                if touche.valeur == choix && choix != "x" && choix != "o"
                    touche.valeur = "o" 
                    valide = true
                    @affichage1.affiche
                end
            end
            if valide == false
            puts "Veuillez rentrer une touche valide"
            end
        end
        self.victory
    end

    def victory
        touch = @affichage1.grille1.touche_array
        if touch[0].valeur == touch[1].valeur && touch[1].valeur == touch[2].valeur
            puts "Bravo, vous avez gagné !"
        elsif touch[3].valeur == touch[4].valeur && touch[4].valeur == touch[5].valeur
            puts "Bravo, vous avez gagné !"
        elsif touch[6].valeur == touch[7].valeur && touch[7].valeur == touch[8].valeur
            puts "Bravo, vous avez gagné !"
        elsif touch[0].valeur == touch[3].valeur && touch[3].valeur == touch[6].valeur
            puts "Bravo, vous avez gagné !"
        elsif touch[1].valeur == touch[4].valeur && touch[4].valeur == touch[7].valeur
            puts "Bravo, vous avez gagné !"
        elsif touch[2].valeur == touch[5].valeur && touch[5].valeur == touch[8].valeur
            puts "Bravo, vous avez gagné !"
        elsif touch[0].valeur == touch[4].valeur && touch[4].valeur == touch[8].valeur
            puts "Bravo, vous avez gagné !"
        elsif touch[2].valeur == touch[4].valeur && touch[4].valeur == touch[6].valeur
            puts "Bravo, vous avez gagné !"
        end  
    end

end

jeu1 = Jeu.new 
jeu1.tour
