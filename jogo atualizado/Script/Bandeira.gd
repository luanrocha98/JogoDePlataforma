extends Area2D

export var proximaFase = "vazio"

func _on_Bandeira_body_entered(body):
	if body.name == "jogador":
		get_tree().change_scene(proximaFase)

