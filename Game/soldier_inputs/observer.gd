extends Area2D

signal enemy_found(how_many:int) # emitted each time an enemy eneters visilbity range
signal enemy_lost # emitted when last enemy leaves visiblity range

signal thing_found(type_of_thing:int) # emitted each time a thing is seen for the very first time

signal player_found # emitted when player enters visibility range
signal player_lost # emitted when player leaves visibility range

var array_of_things_already_seen = [] # to avoid a possible loop of re-seeing one thing over and over each seen thing should be added here

func _on_body_entered(body: Node2D) -> void:
	
	pass # Replace with function body.


func _on_area_entered(area: Area2D) -> void:
	pass # Replace with function body.
