# exo 4 - Calcul de la moyenne
# Un instituteur souhaite pouvoir saisir les notes de ces élèves et obtenir le nombre et la moyenne pour le trimestre.
# Le script devra permettre de saisir note par note, une fois les notes saisies on stoppera la saisie avec le mot STOP
# Afin de ne pas obtenir d'erreur, on s'assure que les saisies soient bien des chiffres.
# Un fois le mot « STOP »  saisie,
# Le programme répondra de lui même qu'il y a eu X notes de saisies et que la moyenne est de Y / 20
# 1ere variante  (optionnelle)
# À la saisie des notes, au lieu de saisir note par note, on saisie toutes les notes sur une seule saisie séparée par des espaces, la validation vaudrait l'envoi des note.
# 2eme variante (optonnelle)
# Au lieu de faire une moyenne sur 20 on pourrait imaginer faire une moyenne sur 10 20 30 mais aussi permettre de saisir des notes non plus sur 20 mais elles aussi sur 10 20 30, sasvhant que bien entendu, il est possible de saisir en même temps des notes sur 10 et des notes sur 20. 
sum = 0
markNumber = 0
mark=""
# On initialise la moyenne, on fait attention à ce que ce soit un float
moyenne = 0.0
#On flit l'entrée utilisateur jusqu'à ce qu'on dise STOP
while true
    puts "Entrez vos notes"
    mark=$stdin.gets.chomp
    if mark == "STOP"
        break
    end
    #Integer ESSAIE de transformer son paramètre en entier, s'il n'y a que des chiffres dans le paramètres alors ce sera transformer en integer sinon cela renverra une ERREUR et ne sera donc pas transformé en integer.
    #rescue capture l'erreur et renvoie ce qui suit à la place
    if(Integer(mark) rescue false)
        mark = mark.chomp.to_i
        if(mark >=0 && mark <=20)
            sum = sum + mark
            markNumber += 1
            #On fait une mise à jour de la moyenne avec à chaque entrée d'une nouvelle note
            #la note divisé par le nombre de note + l'ancienne moyenne * l'ancien nombre de note divisé par le nouveau nombre de note
            moyenne = (mark / markNumber) + moyenne * (markNumber - 1) / markNumber
        else
            puts "Veuillez saisir un nombre compris entre 0 et 20"
        end    
        
    else 
        puts "ce n'est pas une note"
    end
end
#Lorsque l'utilisateur entrera STOP on affichera : 
puts "il y a eu " + markNumber.to_s + " notes de saisies, la moyenne est de " + moyenne.to_s + " / 20"