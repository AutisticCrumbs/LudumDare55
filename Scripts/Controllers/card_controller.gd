extends Node

#The list of cards in the deck
var cards:Array

func GetCards(ammount:int):
	var cards: Array
	for count in ammount:
		cards.append(GetCard())
	
	
func GetCard():
	#Total the weights
	var sum:float
	for val in cards:
		sum += val
	
	#Get new weights between 0 and 1
	var new_weights: Array
	for val in cards:
		new_weights.append(val / sum)
		
	#Get the Chance Value to use for selecting the card based off the total weights
	var chance = GetChance()
	
	#Find the item that matches the chance
	for card in cards:
		if chance < card.weight:
			return card
			
		chance -= card.weight
	
	
	
	
func GetChance():
	return RandomNumberGenerator.new().randf_range(0, 1)
	
func GetRandValue(lower_range:int, upper_range:int, chance:int):
	var rand = RandomNumberGenerator.new()
	var value = rand.randi_range(lower_range, upper_range)
	
