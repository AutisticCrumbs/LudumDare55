extends Node


#Saves data to the designated path
func Export(path:String, data):
	var file = FileAccess.open("path", FileAccess.WRITE)
	file.store_line(data)
	file.close()
	pass
	
#Gets data from the desginated path
#If provided a parameter returns that value else returns all
func Import(path:String, parameter:String = ""):
	var file = FileAccess.open("path", FileAccess.READ)
	var json_text = file.get_as_text()
	var my_json = JSON.new()
	var parse_result = my_json.parse(json_text)

	if parse_result != OK:
		print("Error %s reading json file." % parse_result)
		return

	var data = my_json.get_data()
	
	if data.has(parameter):
		return data[parameter]
	
	return data
	
	pass 
