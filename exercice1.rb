# On affiche une question à l'utilisateur :
puts "Entrez un mot:"
# on créer une variable name
# On reccueil l'entrée de l'utilisateur
name = $stdin.gets
# On gère le pb de \n à la fin : on supprime le retour à ligne grace à .chomp
name = name.chomp  # "kayak\n" devient "kayak"
​
# On calcule si c'est un palindrome et affiche un message correspondant
if name == name.reverse
  puts "le mot"+ " " + name + " " + "est un palindrome"
else
  puts "Le mot" + " " + name + " " + "n'est pas un palindrome"
end
​
# exo_1 git:(master) ✗ ruby palindrome.rb
#Entrez un mot:
#nom
#Le mot nom n'est pas un palindrome
