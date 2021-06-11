extends Control
var title = "Perdido"
var mission = "Fale com o taverneiro"
var mission1 = "Mate os slimes"
var mission2 = "Mate os goblins"
var mission3 = "Elimine os esqueletos"

var tocou = false
export var missionCount = 0
export var mission1Limit = 5
export var mission2Limit = 5
export var mission3Limit = 5

var showQuest = -1

func quest():
	if Input.is_action_just_released ("quest"):
		print("apertou")
		if showQuest == -1: #Se esta fechado então...
			self.visible = true
			$AnimatedSprite.play("opening")
			yield(get_tree().create_timer(1.0),"timeout")
			$textQuest.show()
			$titleQuest.show()
		else : #se esta aberto então...
			$textQuest.hide()
			$titleQuest.hide()
			$AnimatedSprite.play("closing")
			yield(get_tree().create_timer(1.0),"timeout")
			self.visible = false
		showQuest *= -1
func _ready():
	$titleQuest.text = title
	$textQuest.text = mission
func _process(delta):
	quest()
		 
	
	##if GlobalMissionScript.slimesKilled == mission1Limit:
	##	$textQuest.text = mission2 + " " + str(GlobalMissionScript.goblinsKilled) +  "/" + str(mission2Limit)
	#if GlobalMissionScript.goblinsKilled == mission2Limit:
	#	$titleQuest.text = "Caveirinhas"
	#	$textQuest.text = mission3 + str(GlobalMissionScript.skeletonsKilled) + "/" + str(mission3Limit)
	#if GlobalMissionScript.skeletonsKilled == mission3Limit:
	#	emit_signal("boss")
		



	
	
	
