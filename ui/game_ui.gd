extends CanvasLayer

@onready var timer_label: Label = %TimerLabel
@onready var meat_label: Label = %MeatLabel
@onready var health_progress_bar: ProgressBar = %HealthProgressBar

func _process(delta: float):
	# update labels
	timer_label.text = GameManager.time_elapsed_string
	meat_label.text = str(GameManager.meat_counter)
	
	# atualizar health bar
	health_progress_bar.max_value = GameManager.player.max_health
	health_progress_bar.value = GameManager.player.health
