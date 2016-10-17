
def calculateWeight(userLoad)
	userLoad = (userLoad - 45) / 2
	count = 0
	while (userLoad > 0) do

	until userLoad < 45
		count =+ 1
		userLoad -= 45
		if userLoad < 45 
			@sideWeights.push ("Add #{count} - 45 pound weight(s)")
		end
	end
	
		until userLoad < 35
			userLoad -= 35
			@sideWeights.push ("Add 1 - 35 pound weight to each side")
		end

		until userLoad < 25
			userLoad -= 25
			@sideWeights.push ("Add 1 - 25 pound weight to each side")
		end	

		until userLoad < 15
			userLoad -= 15
			@sideWeights.push  ("Add 1 - 15 pound weight to each side")
		end	

		until userLoad < 10
			userLoad -= 10
			@sideWeights.push ("Add 1 - 10 pound weight to each side")
		end

		until userLoad < 5
			userLoad -= 5
			@sideWeights.push ("Add 1 - 5 pound weight to each side")
		end
	end
end

@sideWeights = Array.new
validInput = false

until validInput == true
	puts "How much would you like to lift?"
	userWeight = gets.chomp.to_i
	if ((userWeight - 45)/2) % 5 == 0
		validInput = true
	else 
		puts "invalid input, use 5lb increments, remember the bar is 45lbs, so you may have to add 5."
	end
end

	calculateWeight(userWeight)

		puts "For #{userWeight}lbs: "
		@sideWeights.each do |sideWeight|
			puts sideWeight
		end



