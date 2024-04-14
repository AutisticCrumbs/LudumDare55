extends Node


var hand:Array #The current cards in hand

var player1:Character
var player2:Character

var player1_ready:bool
var player2_ready:bool

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if player1_ready && player2_ready:
		var winner = Fight()


func Fight():
	player1_ready = false
	player2_ready = false
	
	player1.CalcDamage(player2.GetAttack())
	player2.CalcDamage(player1.GetAttack())

	if player1.GetDeffense() <= 0 && player2.GetDeffense() <= 0:
		#Draw
		return 2
		
	if player1.GetDeffense() <= 0:
		#player2 Wins
		return 1
		
	if player2.GetDeffense() <= 0:
		#player1 Wins
		return 0
