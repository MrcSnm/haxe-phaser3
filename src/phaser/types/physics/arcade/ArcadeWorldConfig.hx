package phaser.types.physics.arcade;

/**
 * @typedef {object} Phaser.Types.Physics.Arcade.ArcadeWorldConfig
 * @since 3.0.0
 *
 * @property {number} [fps=60] - Sets {@link Phaser.Physics.Arcade.World#fps}.
 * @property {number} [timeScale=1] - Sets {@link Phaser.Physics.Arcade.World#timeScale}.
 * @property {Phaser.Types.Math.Vector2Like} [gravity] - Sets {@link Phaser.Physics.Arcade.World#gravity}.
 * @property {number} [x=0] - Sets {@link Phaser.Physics.Arcade.World#bounds bounds.x}.
 * @property {number} [y=0] - Sets {@link Phaser.Physics.Arcade.World#bounds bounds.y}.
 * @property {number} [width=0] - Sets {@link Phaser.Physics.Arcade.World#bounds bounds.width}.
 * @property {number} [height=0] - Sets {@link Phaser.Physics.Arcade.World#bounds bounds.height}.
 * @property {Phaser.Types.Physics.Arcade.CheckCollisionObject} [checkCollision] - Sets {@link Phaser.Physics.Arcade.World#checkCollision}.
 * @property {number} [overlapBias=4] - Sets {@link Phaser.Physics.Arcade.World#OVERLAP_BIAS}.
 * @property {number} [tileBias=16] - Sets {@link Phaser.Physics.Arcade.World#TILE_BIAS}.
 * @property {boolean} [forceX=false] - Sets {@link Phaser.Physics.Arcade.World#forceX}.
 * @property {boolean} [isPaused=false] - Sets {@link Phaser.Physics.Arcade.World#isPaused}.
 * @property {boolean} [debug=false] - Sets {@link Phaser.Physics.Arcade.World#debug}.
 * @property {boolean} [debugShowBody=true] - Sets {@link Phaser.Physics.Arcade.World#defaults debugShowBody}.
 * @property {boolean} [debugShowStaticBody=true] - Sets {@link Phaser.Physics.Arcade.World#defaults debugShowStaticBody}.
 * @property {boolean} [debugShowVelocity=true] - Sets {@link Phaser.Physics.Arcade.World#defaults debugShowStaticBody}.
 * @property {number} [debugBodyColor=0xff00ff] - Sets {@link Phaser.Physics.Arcade.World#defaults bodyDebugColor}.
 * @property {number} [debugStaticBodyColor=0x0000ff] - Sets {@link Phaser.Physics.Arcade.World#defaults staticBodyDebugColor}.
 * @property {number} [debugVelocityColor=0x00ff00] - Sets {@link Phaser.Physics.Arcade.World#defaults velocityDebugColor}.
 * @property {number} [maxEntries=16] - Sets {@link Phaser.Physics.Arcade.World#maxEntries}.
 * @property {boolean} [useTree=true] - Sets {@link Phaser.Physics.Arcade.World#useTree}.
 */
typedef ArcadeWorldConfig = {
    @:optional var fps:Float;
    @:optional var timeScale:Float;
    @:optional var gravity:phaser.types.math.Vector2Like;
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var width:Float;
    @:optional var height:Float;
    @:optional var checkCollision:phaser.types.physics.arcade.CheckCollisionObject;
    @:optional var overlapBias:Float;
    @:optional var tileBias:Float;
    @:optional var forceX:Bool;
    @:optional var isPaused:Bool;
    @:optional var debug:Bool;
    @:optional var debugShowBody:Bool;
    @:optional var debugShowStaticBody:Bool;
    @:optional var debugShowVelocity:Bool;
    @:optional var debugBodyColor:Float;
    @:optional var debugStaticBodyColor:Float;
    @:optional var debugVelocityColor:Float;
    @:optional var maxEntries:Float;
    @:optional var useTree:Bool;
};
