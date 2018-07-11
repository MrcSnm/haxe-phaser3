package phaser.gameobjects.particles;

@:native("Phaser.GameObjects.Particles.ParticleEmitter")
extern class ParticleEmitter extends phaser.gameobjects.components.BlendMode {
    public function new(manager:phaser.gameobjects.particles.ParticleEmitterManager, config:ParticleEmitterConfig);
    public var manager:phaser.gameobjects.particles.ParticleEmitterManager;
    public var texture:phaser.textures.Texture;
    public var frames:Array<phaser.textures.Frame>;
    public var defaultFrame:phaser.textures.Frame;
    public var configFastMap:Dynamic;
    public var configOpMap:Dynamic;
    public var name:String;
    public var particleClass:phaser.gameobjects.particles.Particle;
    public var x:phaser.gameobjects.particles.EmitterOp;
    public var y:phaser.gameobjects.particles.EmitterOp;
    public var radial:Bool;
    public var gravityX:Float;
    public var gravityY:Float;
    public var acceleration:Bool;
    public var accelerationX:phaser.gameobjects.particles.EmitterOp;
    public var accelerationY:phaser.gameobjects.particles.EmitterOp;
    public var maxVelocityX:phaser.gameobjects.particles.EmitterOp;
    public var maxVelocityY:phaser.gameobjects.particles.EmitterOp;
    public var speedX:phaser.gameobjects.particles.EmitterOp;
    public var speedY:phaser.gameobjects.particles.EmitterOp;
    public var moveTo:Bool;
    public var moveToX:phaser.gameobjects.particles.EmitterOp;
    public var moveToY:phaser.gameobjects.particles.EmitterOp;
    public var bounce:phaser.gameobjects.particles.EmitterOp;
    public var scaleX:phaser.gameobjects.particles.EmitterOp;
    public var scaleY:phaser.gameobjects.particles.EmitterOp;
    public var tint:phaser.gameobjects.particles.EmitterOp;
    public var alpha:phaser.gameobjects.particles.EmitterOp;
    public var lifespan:phaser.gameobjects.particles.EmitterOp;
    public var angle:phaser.gameobjects.particles.EmitterOp;
    public var rotate:phaser.gameobjects.particles.EmitterOp;
    public var emitCallback:ParticleEmitterCallback;
    public var emitCallbackScope:Dynamic;
    public var deathCallback:ParticleDeathCallback;
    public var deathCallbackScope:Dynamic;
    public var maxParticles:Int;
    public var quantity:phaser.gameobjects.particles.EmitterOp;
    public var delay:phaser.gameobjects.particles.EmitterOp;
    public var frequency:Float;
    public var on:Bool;
    public var particleBringToTop:Bool;
    public var timeScale:Float;
    public var emitZone:Dynamic;
    public var deathZone:phaser.gameobjects.particles.zones.DeathZone;
    public var bounds:phaser.geom.Rectangle;
    public var collideLeft:Bool;
    public var collideRight:Bool;
    public var collideTop:Bool;
    public var collideBottom:Bool;
    public var active:Bool;
    public var follow:phaser.gameobjects.GameObject;
    public var followOffset:phaser.math.Vector2;
    public var trackVisible:Bool;
    public var currentFrame:Int;
    public var randomFrame:Bool;
    public var frameQuantity:Int;
    public function fromJSON(config:ParticleEmitterConfig):phaser.gameobjects.particles.ParticleEmitter;
    public function toJSON(?output:Dynamic):Dynamic;
    public function startFollow(target:phaser.gameobjects.particles.Particle, ?offsetX:Float, ?offsetY:Float, ?trackVisible:Bool):phaser.gameobjects.particles.ParticleEmitter;
    public function stopFollow():phaser.gameobjects.particles.ParticleEmitter;
    public function getFrame():phaser.textures.Frame;
    public function setFrame(frames:Dynamic, ?pickRandom:Bool, ?quantity:Int):phaser.gameobjects.particles.ParticleEmitter;
    public function setRadial(?value:Bool):phaser.gameobjects.particles.ParticleEmitter;
    public function setPosition(x:Dynamic, y:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function setBounds(x:Dynamic, y:Float, width:Float, height:Float):phaser.gameobjects.particles.ParticleEmitter;
    public function setSpeedX(value:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function setSpeedY(value:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function setSpeed(value:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function setScaleX(value:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function setScaleY(value:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function setScale(value:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function setGravityX(value:Float):phaser.gameobjects.particles.ParticleEmitter;
    public function setGravityY(value:Float):phaser.gameobjects.particles.ParticleEmitter;
    public function setGravity(x:Float, y:Float):phaser.gameobjects.particles.ParticleEmitter;
    public function setAlpha(value:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function setEmitterAngle(value:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function setAngle(value:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function setLifespan(value:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function setQuantity(quantity:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function setFrequency(frequency:Float, ?quantity:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function setEmitZone(?zoneConfig:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function setDeathZone(?zoneConfig:ParticleEmitterDeathZoneConfig):phaser.gameobjects.particles.ParticleEmitter;
    public function reserve(particleCount:Int):phaser.gameobjects.particles.ParticleEmitter;
    public function getAliveParticleCount():Int;
    public function getDeadParticleCount():Int;
    public function getParticleCount():Int;
    public function atLimit():Bool;
    public function onParticleEmit(callback:ParticleEmitterCallback, ?context:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function onParticleDeath(callback:ParticleDeathCallback, ?context:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function killAll():phaser.gameobjects.particles.ParticleEmitter;
    public function forEachAlive(callback:ParticleEmitterCallback, context:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function forEachDead(callback:ParticleEmitterCallback, context:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function start():phaser.gameobjects.particles.ParticleEmitter;
    public function pause():phaser.gameobjects.particles.ParticleEmitter;
    public function resume():phaser.gameobjects.particles.ParticleEmitter;
    public function depthSort():phaser.gameobjects.particles.ParticleEmitter;
    public function flow(frequency:Float, ?count:Dynamic):phaser.gameobjects.particles.ParticleEmitter;
    public function explode(count:Int, x:Float, y:Float):phaser.gameobjects.particles.Particle;
    public function emitParticleAt(?x:Float, ?y:Float, ?count:Int):phaser.gameobjects.particles.Particle;
    public function emitParticle(?count:Int, ?x:Float, ?y:Float):phaser.gameobjects.particles.Particle;
    public function preUpdate(time:Int, delta:Float):Void;
    public function depthSortCallback(a:Dynamic, b:Dynamic):Int;
    public function indexSortCallback(a:Dynamic, b:Dynamic):Int;
    public var mask:Dynamic;
    public function setMask(mask:Dynamic):Dynamic;
    public function clearMask(?destroyMask:Bool):Dynamic;
    public function createBitmapMask(?renderable:phaser.gameobjects.GameObject):phaser.display.masks.BitmapMask;
    public function createGeometryMask(?graphics:phaser.gameobjects.Graphics):phaser.display.masks.GeometryMask;
    public var scrollFactorX:Float;
    public var scrollFactorY:Float;
    public function setScrollFactor(x:Float, ?y:Float):Dynamic;
    public var visible:Bool;
    public function setVisible(value:Bool):Dynamic;
}
