def weight_watcher(plateName, lipides, glucides, proteines)
	calories = Hash.new
	plate = Hash.new
	calories = {
		"Lipides" => 9,
		"Glucides" => 4,
		"Protéines" => 4
	}

	plate = {
		"Lipides" => lipides,
		"Glucides" => glucides,
		"Protéines" => proteines
	}

	result = 0.0
	calories.each do |key, value|
		result = result + (calories[key].to_f*plate[key])
	end

	puts "Le nombre de caloris pour le plate #{plateName} est de #{result}."

end


def perform
	weight_watcher("WELSH", 38.4, 18.3, 36.3)
end

perform