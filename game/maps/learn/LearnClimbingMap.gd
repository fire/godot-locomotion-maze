class_name LearnClimbingMap
extends MapBase


func _on_Player_fade_complete(id: String):
	match id:
		"start":
			$Sounds/LearnClimbing.play()

		"finish":
			emit_signal("map_complete")


func _on_LearnClimbing_finished():
	$Player.enable_movement(true)
	$Target.enabled = true


func _on_Target_target_triggered(_target):
	$Player.enable_movement(false)
	$Player.fade_out("finish", 3)
