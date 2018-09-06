package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.TransformMatrix")
extern class TransformMatrix {
    public function new(?a:Float, ?b:Float, ?c:Float, ?d:Float, ?tx:Float, ?ty:Float);
    public var matrix:js.html.Float32Array;
    public var decomposedMatrix:Dynamic;
    public var a:Float;
    public var b:Float;
    public var c:Float;
    public var d:Float;
    public var e:Float;
    public var f:Float;
    public var tx:Float;
    public var ty:Float;
    public var rotation:Float;
    public var scaleX:Float;
    public var scaleY:Float;
    public function loadIdentity():Dynamic;
    public function translate(x:Float, y:Float):Dynamic;
    public function scale(x:Float, y:Float):Dynamic;
    public function rotate(angle:Float):Dynamic;
    public function multiply(rhs:phaser.gameobjects.components.TransformMatrix, ?out:phaser.gameobjects.components.TransformMatrix):phaser.gameobjects.components.TransformMatrix;
    public function multiplyWithOffset(src:phaser.gameobjects.components.TransformMatrix, offsetX:Float, offsetY:Float):Dynamic;
    public function transform(a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Dynamic;
    public function transformPoint(x:Float, y:Float, point:Dynamic):phaser.geom.Point;
    public function invert():Dynamic;
    public function copyFrom(src:phaser.gameobjects.components.TransformMatrix):Dynamic;
    public function copyFromArray(src:Array<Dynamic>):Dynamic;
    public function copyToContext(ctx:js.html.CanvasRenderingContext2D):js.html.CanvasRenderingContext2D;
    public function setToContext(ctx:js.html.CanvasRenderingContext2D):js.html.CanvasRenderingContext2D;
    public function copyToArray(?out:Array<Dynamic>):Array<Dynamic>;
    public function setTransform(a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Dynamic;
    public function decomposeMatrix():Dynamic;
    public function applyITRS(x:Float, y:Float, rotation:Float, scaleX:Float, scaleY:Float):Dynamic;
    public function applyInverse(x:Float, y:Float, ?output:phaser.math.Vector2):phaser.math.Vector2;
    public function getX(x:Float, y:Float):Float;
    public function getY(x:Float, y:Float):Float;
    public function getCSSMatrix():String;
    public function destroy():Void;
}
