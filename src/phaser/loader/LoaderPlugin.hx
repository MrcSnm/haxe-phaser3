package phaser.loader;

@:native("Phaser.Loader.LoaderPlugin")
extern class LoaderPlugin extends phaser.events.EventEmitter {
    public function new(scene:phaser.Scene);
    public var scene:phaser.Scene;
    public var systems:phaser.scenes.Systems;
    public var cacheManager:phaser.cache.CacheManager;
    public var textureManager:phaser.textures.TextureManager;
    public var prefix:String;
    public var path:String;
    public var baseURL:String;
    public var maxParallelDownloads:Int;
    public var xhr:XHRSettingsObject;
    public var crossOrigin:String;
    public var totalToLoad:Int;
    public var progress:Float;
    public var list:Dynamic;
    public var inflight:Dynamic;
    public var queue:Dynamic;
    public var totalFailed:Int;
    public var totalComplete:Int;
    public var state:Int;
    public function setBaseURL(?url:String):phaser.loader.LoaderPlugin;
    public function setPath(?path:String):phaser.loader.LoaderPlugin;
    public function setPrefix(?prefix:String):phaser.loader.LoaderPlugin;
    public function setCORS(?crossOrigin:String):phaser.loader.LoaderPlugin;
    public function addFile(file:Dynamic):Void;
    public function keyExists(file:phaser.loader.File):Bool;
    public function addPack(data:Dynamic, ?packKey:String):Bool;
    public function isLoading():Bool;
    public function isReady():Bool;
    public function start():Void;
    public function updateProgress():Void;
    public function update():Void;
    public function nextFile(file:phaser.loader.File, success:Bool):Void;
    public function fileProcessComplete(file:phaser.loader.File):Void;
    public function loadComplete():Void;
    public function flagForRemoval(file:phaser.loader.File):Void;
    public function saveJSON(data:Dynamic, ?filename:String):phaser.loader.LoaderPlugin;
    public function save(data:Dynamic, ?filename:String, ?filetype:String):phaser.loader.LoaderPlugin;
    public function reset():Void;
    public function animation(key:Dynamic, ?url:String, ?dataKey:String, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function atlas(key:Dynamic, ?textureURL:Dynamic, ?atlasURL:String, ?textureXhrSettings:XHRSettingsObject, ?atlasXhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function atlasXML(key:Dynamic, ?textureURL:Dynamic, ?atlasURL:String, ?textureXhrSettings:XHRSettingsObject, ?atlasXhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function audio(key:Dynamic, ?urls:Dynamic, ?config:Dynamic, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function audioSprite(key:Dynamic, jsonURL:String, ?audioURL:String, ?audioConfig:Dynamic, ?audioXhrSettings:XHRSettingsObject, ?jsonXhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function binary(key:Dynamic, ?url:String, ?dataType:Dynamic, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function bitmapFont(key:Dynamic, ?textureURL:Dynamic, ?fontDataURL:String, ?textureXhrSettings:XHRSettingsObject, ?fontDataXhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function glsl(key:Dynamic, ?url:String, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function html(key:Dynamic, ?url:String, ?width:Int, ?height:Int, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function image(key:Dynamic, ?url:Dynamic, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function json(key:Dynamic, ?url:String, ?dataKey:String, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function multiatlas(key:Dynamic, ?atlasURL:String, ?path:String, ?baseURL:String, ?atlasXhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function pack(key:Dynamic, ?url:String, ?dataKey:String, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function plugin(key:Dynamic, ?url:Dynamic, ?start:Bool, ?mapping:String, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function svg(key:Dynamic, ?url:String, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function scenePlugin(key:Dynamic, ?url:Dynamic, ?systemKey:String, ?sceneKey:String, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function script(key:Dynamic, ?url:String, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function spritesheet(key:Dynamic, ?url:String, ?frameConfig:phaser.loader.filetypes.ImageFrameConfig, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function text(key:Dynamic, ?url:String, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function tilemapCSV(key:Dynamic, ?url:String, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function tilemapImpact(key:Dynamic, ?url:String, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function tilemapTiledJSON(key:Dynamic, ?url:String, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function unityAtlas(key:Dynamic, ?textureURL:Dynamic, ?atlasURL:String, ?textureXhrSettings:XHRSettingsObject, ?atlasXhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
    public function xml(key:Dynamic, ?url:String, ?xhrSettings:XHRSettingsObject):phaser.loader.LoaderPlugin;
}
