# Sprite Cutter

This is a tool to manually create .atlastex texures from a single atlas/spritesheet texture

## How To Use

1) Create a new scene with an AtlasScene root node.

![spritecutter1](https://user-images.githubusercontent.com/526829/132289808-9ec4094d-cb05-453e-b2ef-029fed7cbaa4.png)


2) Add as many Sprite nodes as you want using region and the TextureRegion dock to define the region to use. The name of the node will be the name of the exported file.

![spritecutter2](https://user-images.githubusercontent.com/526829/132289817-96e85fab-b8d6-46bb-8772-06fb0a4959a6.png)


3) Set the export path. If it doesn't exist it will be created

![spritecutter3](https://user-images.githubusercontent.com/526829/132289827-47319c35-7717-43d1-9aaf-875dac10ba7c.png)


4) Go to Tools->Sprite Cutter: Export Atlas Textures

![spritecutter4](https://user-images.githubusercontent.com/526829/132289844-4d00baf8-883a-4b11-a5d4-8543a7dad162.png)

![spritecutter5](https://user-images.githubusercontent.com/526829/132289851-e83f7a01-0623-4cd7-85b9-88e36fbaa7cc.png)



You can save the AtlasScene as a scene in case you ever need to change the sprite regions

If you change the AtlasScene just repeat step 4. Existing textures will be overwritten.

### License
MIT licensed. See LICENSE.md
The sprites shown in How To Use section are from https://kenney.nl/assets/toon-characters-1
