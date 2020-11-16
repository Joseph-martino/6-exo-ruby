## exo 3 - Ecrire une méthode qui prendra 2 paramètres nom et surnom qui affichera
#Hello  surnom     # si seul le surnom est fourni
#Bonjour  nom #   si seul le nom est fourni
#Bonjour Nom # *ET QUE* si les 2 sont fournis


#on créer une méthode isname qui prend comme paramètre : name et nickname
def isname(name, nickname)
  #On créer une condition : si name est égal à nil et que nickname est différent de nil alors on affiche le message nickname 
  if name == nil && nickname != nil
      puts "Bonjour je suis" + " " + nickname
  #sinon si le paramètre name est différent de nil et que nickname est égal à nil alors on affiche le message name
  elsif name != nil && nickname == nil
   puts "Bonjour je suis" + " " + name
  #si name est différent de nil et que nickname aussi alors on affiche le message name et nickname
  else name != nil && nickname != nil
       puts "bonjour je suis" + " " + name + " " + "mais appelez-moi" + " " + nickname
   end
end

