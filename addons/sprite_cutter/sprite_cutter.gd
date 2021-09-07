tool
extends EditorPlugin

func _enter_tree():
	add_custom_type("AtlasScene", "Node", preload("AtlasScene.gd"), preload("icon.svg") )
	add_tool_menu_item("Sprite Cutter: Export Atlas Textures", self, "export_sprites")
	pass


func _exit_tree():
	remove_custom_type("AtlasScene")
	remove_tool_menu_item("Sprite Cutter: Export Atlas Textures")
	pass

func export_sprites(_ud):
	var scene = get_editor_interface().get_edited_scene_root()
	if not is_instance_valid(scene) or not scene is AtlasScene:
		printerr("Invalid scene")
		return
	var destination_path = scene.get("destination_path")
	if typeof(destination_path) != TYPE_STRING:
		printerr("Destination Path should be a string")
		return
	if destination_path.empty():
		printerr("Destination Path is empty")
		return
	var dir = Directory.new()
	if not dir.dir_exists(destination_path):
		print("Destination Path '%s' doesn't exist. Creating.." % destination_path)
		dir.make_dir_recursive(destination_path)


	var sprites = []
	# Create a list of sprites
	for child in scene.get_children():
		if child is Sprite:
			sprites.append(child)
	# If the list is empty return an error
	if sprites.empty():
		print("Nothing to do. No sprites nodes found")
		return
	
	# Create an atlas texture for each sprite
	# using the node name and the texture region
	for sprite in sprites:
		sprite = sprite as Sprite
		var tex := AtlasTexture.new()
		tex.atlas = sprite.texture
		tex.region = sprite.region_rect
		var fullpath = destination_path + "/" + sprite.name + ".atlastex"
		ResourceSaver.save(fullpath, tex)
		print("(Re)exported %s" % fullpath)
