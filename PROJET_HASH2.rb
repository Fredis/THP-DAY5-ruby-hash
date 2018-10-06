WELSH = Hash.new
WELSH["Lipides"] = 38.4
WELSH["Glucides"] = 18.3
WELSH["Protéines"] = 36.4

FRITES = Hash.new
FRITES["Lipides"] = 15.0
FRITES["Glucides"] = 41.0
FRITES["Protéines"] = 3.4

BIERE = Hash.new
BIERE["Lipides"] = 0.0
BIERE["Glucides"] = 25.0
BIERE["Protéines"] = 4.0

CALORIES = Hash.new
CALORIES["Lipides"] = 9.0
CALORIES["Glucides"] = 4.0
CALORIES["Protéines"] = 4.0

MENU = Hash.new #C'est le hash MENU qui regroupe les autres HASHS correspondant aux différents plats
MENU["WELSH"] = WELSH
MENU["FRITES"] = FRITES
MENU["BIERE"] = BIERE


def weight_watcher(plat) #Réalisation d'une méthode qui va calculer le nombre de calories sur la base du hash CALORIES et du hash en argument de la méthode
	result = 0.0
		CALORIES.each do |keyweight, valueweight|
			result = result + CALORIES[keyweight]*plat[keyweight]
		end
	return result
end


def meal_weight_watchers(menu) #Réalisation d'une méthode qui va parcourir les hashs contenus dans le hash MENU, lance la méthode weight_watcher autant de fois qu'il y a de hashs et qui va nous donner le nombre total de calories
	finalResult = 0.0
	menu.each do |key, value|
	finalResult = finalResult + weight_watcher(value)
	end
	puts "La valeur totale du menu en calories est de : #{finalResult}."

end

meal_weight_watchers(MENU)