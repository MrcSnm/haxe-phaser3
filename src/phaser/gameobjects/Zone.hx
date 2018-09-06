package phaser.gameobjects;

@:native("Phaser.GameObjects.Zone")
extern class Zone extends phaser.gameobjects.GameObject {
    public function new(scene:phaser.Scene, x:Float, y:Float, ?width:Float, ?height:Float);
    public var width:Float;
    public var height:Float;
    public var blendMode:Int;
    public var displayWidth:Float;
    public var displayHeight:Float;
    public function setSize(width:Float, height:Float, ?resizeInput:Bool):phaser.gameobjects.Zone;
    public function setDisplaySize(width:Float, height:Float):phaser.gameobjects.Zone;
    public function setCircleDropZone(radius:Float):phaser.gameobjects.Zone;
    public function setRectangleDropZone(width:Float, height:Float):phaser.gameobjects.Zone;
    public function setDropZone(shape:Dynamic, callback:HitAreaCallback):phaser.gameobjects.Zone;
    public var depth:Float;
    public function setDepth(value:Int):Dynamic;
    public function getCenter(?output:Dynamic):phaser.math.Vector2;
    public function getTopLeft(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    public function getTopRight(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    public function getBottomLeft(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    public function getBottomRight(?output:Dynamic, ?includeParent:Bool):phaser.math.Vector2;
    public function getBounds(?output:Dynamic):phaser.geom.Rectangle;
    public var originX:Float;
    public var originY:Float;
    public var displayOriginX:Float;
    public var displayOriginY:Float;
    public function setOrigin(?x:Float, ?y:Float):Dynamic;
    public function setOriginFromFrame():Dynamic;
    public function setDisplayOrigin(?x:Float, ?y:Float):Dynamic;
    public function updateDisplayOrigin():Dynamic;
    public var scaleMode:Dynamic;
    public function setScaleMode(value:Dynamic):Dynamic;
    public var x:Float;
    public var y:Float;
    public var z:Float;
    public var w:Float;
    public var scaleX:Float;
    public var scaleY:Float;
    public var angle:Int;
    public var rotation:Float;
    public function setPosition(?x:Float, ?y:Float, ?z:Float, ?w:Float):Dynamic;
    public function setRandomPosition(?x:Float, ?y:Float, ?width:Float, ?height:Float):Dynamic;
    public function setRotation(?radians:Float):Dynamic;
    public function setAngle(?degrees:Float):Dynamic;
    public function setScale(x:Float, ?y:Float):Dynamic;
    public function setX(?value:Float):Dynamic;
    public function setY(?value:Float):Dynamic;
    public function setZ(?value:Float):Dynamic;
    public function setW(?value:Float):Dynamic;
    public function getLocalTransformMatrix(?tempMatrix:phaser.gameobjects.components.TransformMatrix):phaser.gameobjects.components.TransformMatrix;
    public function getWorldTransformMatrix(?tempMatrix:phaser.gameobjects.components.TransformMatrix, ?parentMatrix:phaser.gameobjects.components.TransformMatrix):phaser.gameobjects.components.TransformMatrix;
    public var scrollFactorX:Float;
    public var scrollFactorY:Float;
    public function setScrollFactor(x:Float, ?y:Float):Dynamic;
    public var visible:Bool;
    public function setVisible(value:Bool):Dynamic;
}
