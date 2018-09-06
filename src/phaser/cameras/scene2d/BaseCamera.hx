package phaser.cameras.scene2d;

@:native("Phaser.Cameras.Scene2D.BaseCamera")
extern class BaseCamera extends phaser.events.EventEmitter {
    public function new(x:Float, y:Float, width:Float, height:Float);
    public var scene:phaser.Scene;
    public var sceneManager:phaser.scenes.SceneManager;
    public var config:Dynamic;
    public var id:Int;
    public var name:String;
    public var resolution:Float;
    public var roundPixels:Bool;
    public var useBounds:Bool;
    public var worldView:phaser.geom.Rectangle;
    public var dirty:Bool;
    public var transparent:Bool;
    public var backgroundColor:phaser.display.Color;
    public var disableCull:Bool;
    public var midPoint:phaser.math.Vector2;
    public var originX:Float;
    public var originY:Float;
    public var x:Float;
    public var y:Float;
    public var width:Float;
    public var height:Float;
    public var scrollX:Float;
    public var scrollY:Float;
    public var zoom:Float;
    public var centerX:Float;
    public var centerY:Float;
    public var displayWidth:Float;
    public var displayHeight:Float;
    public function setOrigin(?x:Float, ?y:Float):Dynamic;
    public function getScroll(x:Float, y:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    public function centerOn(x:Float, y:Float):phaser.cameras.scene2d.BaseCamera;
    public function centerToBounds():phaser.cameras.scene2d.BaseCamera;
    public function centerToSize():phaser.cameras.scene2d.BaseCamera;
    public function cull(renderableObjects:Array<phaser.gameobjects.GameObject>):Array<phaser.gameobjects.GameObject>;
    public function getWorldPoint(x:Float, y:Float, ?output:Dynamic):phaser.math.Vector2;
    public function ignore(entries:Dynamic):phaser.cameras.scene2d.BaseCamera;
    public function preRender(baseScale:Float, resolution:Float):Void;
    public function clampX(x:Float):Float;
    public function clampY(y:Float):Float;
    public function removeBounds():phaser.cameras.scene2d.BaseCamera;
    public function setAngle(?value:Float):phaser.cameras.scene2d.BaseCamera;
    public function setBackgroundColor(?color:Dynamic):phaser.cameras.scene2d.BaseCamera;
    public function setBounds(x:Int, y:Int, width:Int, height:Int, ?centerOn:Bool):phaser.cameras.scene2d.BaseCamera;
    public function setName(?value:String):phaser.cameras.scene2d.BaseCamera;
    public function setPosition(x:Float, ?y:Float):phaser.cameras.scene2d.BaseCamera;
    public function setRotation(?value:Float):phaser.cameras.scene2d.BaseCamera;
    public function setRoundPixels(value:Bool):phaser.cameras.scene2d.BaseCamera;
    public function setScene(scene:phaser.Scene):phaser.cameras.scene2d.BaseCamera;
    public function setScroll(x:Float, ?y:Float):phaser.cameras.scene2d.BaseCamera;
    public function setSize(width:Int, ?height:Int):phaser.cameras.scene2d.BaseCamera;
    public function setViewport(x:Float, y:Float, width:Int, ?height:Int):phaser.cameras.scene2d.BaseCamera;
    public function setZoom(?value:Float):phaser.cameras.scene2d.BaseCamera;
    public function toJSON():JSONCamera;
    public function update(time:Int, delta:Float):Void;
    public var alpha:Float;
    public var alphaTopLeft:Float;
    public var alphaTopRight:Float;
    public var alphaBottomLeft:Float;
    public var alphaBottomRight:Float;
    public function clearAlpha():Dynamic;
    public function setAlpha(?topLeft:Float, ?topRight:Float, ?bottomLeft:Float, ?bottomRight:Float):Dynamic;
    public var visible:Bool;
    public function setVisible(value:Bool):Dynamic;
}
