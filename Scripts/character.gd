extends Node
class_name Character

var _base_attack: int
var _base_deffense: int
var _deffense: int
var _equipment: Array

func GetAttack():
	var atk = _base_attack
	for equip in _equipment:
		atk += equip.attack_mod
		
	return atk

func CalcDeffense():
	var def = _base_deffense
	for equip in _equipment:
		def += equip.deffense_mod
		
	_deffense = def
	
func GetDeffense():
	return _deffense
	
func CalcDamage(ammount:int):
	_deffense -= ammount
	
func AddEquipment(equip: Equipment):
	_equipment.append(equip)
	
