extends Control
var socket

func _ready():
	socket = StreamPeerTCP.new()
	$buttonConnect.connect("pressed",self,"_on_connect")
	$buttonMessage.connect("pressed",self,"_on_message")

func _on_connect():
	socket.connect_to_host("127.0.0.1", 4242)

func _on_message():
	socket.put_string(";")
