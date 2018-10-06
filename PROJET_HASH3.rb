WELSH = Hash.new
WELSH["Lipides"] = 38.4
WELSH["Glucides"] = 18.3
WELSH["Protéines"] = 36.4
WELSH[:prix] = 15

FRITES = Hash.new
FRITES["Lipides"] = 15.0
FRITES["Glucides"] = 41.0
FRITES["Protéines"] = 3.4
FRITES[:prix] = 4

BIERE = Hash.new
BIERE["Lipides"] = 0.0
BIERE["Glucides"] = 25.0
BIERE["Protéines"] = 4.0
BIERE[:prix] = 5

CALORIES = Hash.new
CALORIES["Lipides"] = 9.0
CALORIES["Glucides"] = 4.0
CALORIES["Protéines"] = 4.0

PRIX = Hash.new
PRIX["WELSH"] = WELSH
PRIX["FRITES"] = FRITES
PRIX["BIERE"] = BIERE

MENU = Hash.new #C'est le hash MENU qui regroupe les autres HASHS correspondant aux différents plats
MENU["WELSH"] = WELSH
MENU["FRITES"] = FRITES
MENU["BIERE"] = BIERE
MENU["PRIX"] = PRIX


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
	finalResult = finalResult + weight_watcher(value) if key != "PRIX"
	end
	puts "La valeur totale du menu en calories est de : #{finalResult}."

end

def meal_price(menu) #Réalisation d'une méthode pour récupérer le prix total d'un menu. On part du hash MENU, pour atteindre le hash PRIX et pour atteindre les prix de chacun des plats.
	totalPrice = 0.0
	menu.each do |keyprice, valueprice|
		if keyprice == "PRIX"
			PRIX.each do |keyPlatePrice, valuePlatePrice|
				valuePlatePrice.each do |keyPlate, valuePlate|
					totalPrice = totalPrice + valuePlate if keyPlate == :prix
				end
			end
		end
	end
	puts "La prix total du menu est de : #{totalPrice}."
end

meal_weight_watchers(MENU)
meal_price(MENU)