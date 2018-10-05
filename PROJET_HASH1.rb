WELSH = Hash.new
WELSH["Lipides"] = 38.4
WELSH["Glucides"] = 18.3
WELSH["Protéines"] = 36.4

CALORIES = Hash.new
CALORIES["Lipides"] = 9
CALORIES["Glucides"] = 4
CALORIES["Protéines"] = 4

def weight_watcher(plat)

	result = 0.0
	if value == WELSH
		CALORIES.each do |key, value|
			result = result + CALORIES[key].to_f*WELSH[key]
		end
	end
	puts result
end

weight_watcher(WELSH)
