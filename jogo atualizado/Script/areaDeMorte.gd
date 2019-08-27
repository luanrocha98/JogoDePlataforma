extends Area2D

func _on_areaDeMorte_body_entered(body):
	if body.name == "jogador":
		get_tree().change_scene("res://Cenas/GameOver.tscn")
