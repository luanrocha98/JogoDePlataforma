extends Area2D

func _on_moeda_body_entered(body):
	if body.name == "jogador":
		queue_free()
