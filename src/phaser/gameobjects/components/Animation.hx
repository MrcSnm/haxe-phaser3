package phaser.gameobjects.components;

@:native("Phaser.GameObjects.Components.Animation")
extern class Animation {
    public function new(parent:phaser.gameobjects.GameObject);
    public var parent:phaser.gameobjects.GameObject;
    public var animationManager:phaser.animations.AnimationManager;
    public var isPlaying:Bool;
    public var currentAnim:phaser.animations.Animation;
    public var currentFrame:phaser.animations.AnimationFrame;
    public var frameRate:Float;
    public var duration:Float;
    public var msPerFrame:Float;
    public var skipMissedFrames:Bool;
    public var accumulator:Float;
    public var nextTick:Float;
    public var repeatCounter:Float;
    public var pendingRepeat:Bool;
    public var isPaused:Bool;
    public function setDelay(?value:Int):phaser.gameobjects.GameObject;
    public function getDelay():Int;
    public function delayedPlay(delay:Int, key:String, ?startFrame:Int):phaser.gameobjects.GameObject;
    public function getCurrentKey():String;
    public function load(key:String, ?startFrame:Int):phaser.gameobjects.GameObject;
    public function pause(?atFrame:phaser.animations.AnimationFrame):phaser.gameobjects.GameObject;
    public function resume(?fromFrame:phaser.animations.AnimationFrame):phaser.gameobjects.GameObject;
    public function play(key:String, ?ignoreIfPlaying:Bool, ?startFrame:Int):phaser.gameobjects.GameObject;
    public function playReverse(key:String, ?ignoreIfPlaying:Bool, ?startFrame:Int):phaser.gameobjects.GameObject;
    public function _startAnimation(key:String, ?startFrame:Int):phaser.gameobjects.GameObject;
    public function reverse(key:String):phaser.gameobjects.GameObject;
    public function getProgress():Float;
    public function setProgress(?value:Float):phaser.gameobjects.GameObject;
    public function remove(?key:String, ?animation:phaser.animations.Animation):Void;
    public function getRepeat():Int;
    public function setRepeat(value:Int):phaser.gameobjects.GameObject;
    public function getRepeatDelay():Float;
    public function setRepeatDelay(value:Float):phaser.gameobjects.GameObject;
    public function restart(?includeDelay:Bool):phaser.gameobjects.GameObject;
    public function stop():phaser.gameobjects.GameObject;
    public function stopAfterDelay(delay:Int):phaser.gameobjects.GameObject;
    public function stopOnRepeat():phaser.gameobjects.GameObject;
    public function stopOnFrame(delay:phaser.animations.AnimationFrame):phaser.gameobjects.GameObject;
    public function setTimeScale(?value:Float):phaser.gameobjects.GameObject;
    public function getTimeScale():Float;
    public function getTotalFrames():Int;
    public function update(time:Float, delta:Float):Void;
    public function setCurrentFrame(animationFrame:phaser.animations.AnimationFrame):phaser.gameobjects.GameObject;
    public function setYoyo(?value:Bool):phaser.gameobjects.GameObject;
    public function getYoyo():Bool;
    public function destroy():Void;
    public function forward():Void;
}
