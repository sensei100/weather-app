require 'rubygems'
require 'weatherboy'


puts "Enter your zip code"
location = gets.chomp

def get_weather(zip)
	
client= Weatherboy.new(zip)
conditions= client.current.weather
temp = client.current.temp_f

	if conditions == "Clear" 
		puts "It's gonna be a bright, bright, bright sun-shiny day with a temperature of #{temp}!"
	elsif conditions == "Mostly Cloudy" 
		puts "Somewhere over the rainbow skies are blue.  But not where you are! The weather is cloudy with a temperature of #{temp}."
	elsif conditions == "Overcast"
		puts "Somewhere over the rainbow skies are blue.  But not where you are! The weather is cloudy with a temperature of #{temp}."
	elsif conditions.include? "Snow"
		puts "You may ben walking in a winter wonderland today. Expect snow with a temperature of #{temp}!"
	elsif conditions.include? "Rain" 
		puts "It's a good day for Singing in the Rain! Expect rain with a temperature of #{temp}."
	else
		puts "The temperature is #{temp} and the conditions are #{conditions}."
end
end


get_weather(location)

forecast = Weatherboy.new(location).forecasts


forecast.each do |forecast|

day = forecast.title
cond = forecast.conditions
high = forecast.high_f



puts "#{day} the weather will be #{cond.downcase} with a temperature of #{high}."


end
