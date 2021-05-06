package phaser.physics.matter;

/**
 * @classdesc
 * The Phaser Matter plugin provides the ability to use the Matter JS Physics Engine within your Phaser games.
 *
 * Unlike Arcade Physics, the other physics system provided with Phaser, Matter JS is a full-body physics system.
 * It features:
 *
 * * Rigid bodies
 * * Compound bodies
 * * Composite bodies
 * * Concave and convex hulls
 * * Physical properties (mass, area, density etc.)
 * * Restitution (elastic and inelastic collisions)
 * * Collisions (broad-phase, mid-phase and narrow-phase)
 * * Stable stacking and resting
 * * Conservation of momentum
 * * Friction and resistance
 * * Constraints
 * * Gravity
 * * Sleeping and static bodies
 * * Rounded corners (chamfering)
 * * Views (translate, zoom)
 * * Collision queries (raycasting, region tests)
 * * Time scaling (slow-mo, speed-up)
 *
 * Configuration of Matter is handled via the Matter World Config object, which can be passed in either the
 * Phaser Game Config, or Phaser Scene Config. Here is a basic example:
 *
 * ```js
 * physics: {
 *     default: 'matter',
 *     matter: {
 *         enableSleeping: true,
 *         gravity: {
 *             y: 0
 *         },
 *         debug: {
 *             showBody: true,
 *             showStaticBody: true
 *         }
 *     }
 * }
 * ```
 *
 * This class acts as an interface between a Phaser Scene and a single instance of the Matter Engine.
 *
 * Use it to access the most common Matter features and helper functions.
 *
 * You can find details, documentation and examples on the Matter JS website: https://brm.io/matter-js/
 *
 * @class MatterPhysics
 * @memberof Phaser.Physics.Matter
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Scene} scene - The Phaser Scene that owns this Matter Physics instance.
 */
@:native("Phaser.Physics.Matter.MatterPhysics")
extern class MatterPhysics {
    public function new(scene:phaser.Scene);
    /**
     * The Phaser Scene that owns this Matter Physics instance
     *
     * @name Phaser.Physics.Matter.MatterPhysics#scene
     * @type {Phaser.Scene}
     * @since 3.0.0
     */
    public var scene:phaser.Scene;
    /**
     * A reference to the Scene Systems that belong to the Scene owning this Matter Physics instance.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#systems
     * @type {Phaser.Scenes.Systems}
     * @since 3.0.0
     */
    public var systems:phaser.scenes.Systems;
    /**
     * The parsed Matter Configuration object.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#config
     * @type {Phaser.Types.Physics.Matter.MatterWorldConfig}
     * @since 3.0.0
     */
    public var config:phaser.types.physics.matter.MatterWorldConfig;
    /**
     * An instance of the Matter World class. This class is responsible for the updating of the
     * Matter Physics world, as well as handling debug drawing functions.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#world
     * @type {Phaser.Physics.Matter.World}
     * @since 3.0.0
     */
    public var world:phaser.physics.matter.World;
    /**
     * An instance of the Matter Factory. This class provides lots of functions for creating a
     * wide variety of physics objects and adds them automatically to the Matter World.
     *
     * You can use this class to cut-down on the amount of code required in your game, however,
     * use of the Factory is entirely optional and should be seen as a development aid. It's
     * perfectly possible to create and add components to the Matter world without using it.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#add
     * @type {Phaser.Physics.Matter.Factory}
     * @since 3.0.0
     */
    public var add:phaser.physics.matter.Factory;
    /**
     * An instance of the Body Bounds class. This class contains functions used for getting the
     * world position from various points around the bounds of a physics body.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#bodyBounds
     * @type {Phaser.Physics.Matter.BodyBounds}
     * @since 3.22.0
     */
    public var bodyBounds:phaser.physics.matter.BodyBounds;
    /**
     * A reference to the `Matter.Body` module.
     *
     * The `Matter.Body` module contains methods for creating and manipulating body models.
     * A `Matter.Body` is a rigid body that can be simulated by a `Matter.Engine`.
     * Factories for commonly used body configurations (such as rectangles, circles and other polygons) can be found in the `Bodies` module.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#body
     * @type {MatterJS.BodyFactory}
     * @since 3.18.0
     */
    public var body:Dynamic;
    /**
     * A reference to the `Matter.Composite` module.
     *
     * The `Matter.Composite` module contains methods for creating and manipulating composite bodies.
     * A composite body is a collection of `Matter.Body`, `Matter.Constraint` and other `Matter.Composite`, therefore composites form a tree structure.
     * It is important to use the functions in this module to modify composites, rather than directly modifying their properties.
     * Note that the `Matter.World` object is also a type of `Matter.Composite` and as such all composite methods here can also operate on a `Matter.World`.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#composite
     * @type {MatterJS.CompositeFactory}
     * @since 3.22.0
     */
    public var composite:Dynamic;
    /**
     * A reference to the `Matter.Detector` module.
     *
     * The `Matter.Detector` module contains methods for detecting collisions given a set of pairs.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#detector
     * @type {MatterJS.DetectorFactory}
     * @since 3.22.0
     */
    public var detector:Dynamic;
    /**
     * A reference to the `Matter.Grid` module.
     *
     * The `Matter.Grid` module contains methods for creating and manipulating collision broadphase grid structures.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#grid
     * @type {MatterJS.GridFactory}
     * @since 3.22.0
     */
    public var grid:Dynamic;
    /**
     * A reference to the `Matter.Pair` module.
     *
     * The `Matter.Pair` module contains methods for creating and manipulating collision pairs.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#pair
     * @type {MatterJS.PairFactory}
     * @since 3.22.0
     */
    public var pair:Dynamic;
    /**
     * A reference to the `Matter.Pairs` module.
     *
     * The `Matter.Pairs` module contains methods for creating and manipulating collision pair sets.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#pairs
     * @type {MatterJS.PairsFactory}
     * @since 3.22.0
     */
    public var pairs:Dynamic;
    /**
     * A reference to the `Matter.Query` module.
     *
     * The `Matter.Query` module contains methods for performing collision queries.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#query
     * @type {MatterJS.QueryFactory}
     * @since 3.22.0
     */
    public var query:Dynamic;
    /**
     * A reference to the `Matter.Resolver` module.
     *
     * The `Matter.Resolver` module contains methods for resolving collision pairs.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#resolver
     * @type {MatterJS.ResolverFactory}
     * @since 3.22.0
     */
    public var resolver:Dynamic;
    /**
     * A reference to the `Matter.SAT` module.
     *
     * The `Matter.SAT` module contains methods for detecting collisions using the Separating Axis Theorem.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#sat
     * @type {MatterJS.SATFactory}
     * @since 3.22.0
     */
    public var sat:Dynamic;
    /**
     * A reference to the `Matter.Constraint` module.
     *
     * The `Matter.Constraint` module contains methods for creating and manipulating constraints.
     * Constraints are used for specifying that a fixed distance must be maintained between two bodies (or a body and a fixed world-space position).
     * The stiffness of constraints can be modified to create springs or elastic.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#constraint
     * @type {MatterJS.ConstraintFactory}
     * @since 3.22.0
     */
    public var constraint:Dynamic;
    /**
     * A reference to the `Matter.Bodies` module.
     *
     * The `Matter.Bodies` module contains factory methods for creating rigid bodies
     * with commonly used body configurations (such as rectangles, circles and other polygons).
     *
     * @name Phaser.Physics.Matter.MatterPhysics#bodies
     * @type {MatterJS.BodiesFactory}
     * @since 3.18.0
     */
    public var bodies:Dynamic;
    /**
     * A reference to the `Matter.Composites` module.
     *
     * The `Matter.Composites` module contains factory methods for creating composite bodies
     * with commonly used configurations (such as stacks and chains).
     *
     * @name Phaser.Physics.Matter.MatterPhysics#composites
     * @type {MatterJS.CompositesFactory}
     * @since 3.22.0
     */
    public var composites:Dynamic;
    /**
     * A reference to the `Matter.Axes` module.
     *
     * The `Matter.Axes` module contains methods for creating and manipulating sets of axes.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#axes
     * @type {MatterJS.AxesFactory}
     * @since 3.22.0
     */
    public var axes:Dynamic;
    /**
     * A reference to the `Matter.Bounds` module.
     *
     * The `Matter.Bounds` module contains methods for creating and manipulating axis-aligned bounding boxes (AABB).
     *
     * @name Phaser.Physics.Matter.MatterPhysics#bounds
     * @type {MatterJS.BoundsFactory}
     * @since 3.22.0
     */
    public var bounds:Dynamic;
    /**
     * A reference to the `Matter.Svg` module.
     *
     * The `Matter.Svg` module contains methods for converting SVG images into an array of vector points.
     *
     * To use this module you also need the SVGPathSeg polyfill: https://github.com/progers/pathseg
     *
     * @name Phaser.Physics.Matter.MatterPhysics#svg
     * @type {MatterJS.SvgFactory}
     * @since 3.22.0
     */
    public var svg:Dynamic;
    /**
     * A reference to the `Matter.Vector` module.
     *
     * The `Matter.Vector` module contains methods for creating and manipulating vectors.
     * Vectors are the basis of all the geometry related operations in the engine.
     * A `Matter.Vector` object is of the form `{ x: 0, y: 0 }`.
     *
     * @name Phaser.Physics.Matter.MatterPhysics#vector
     * @type {MatterJS.VectorFactory}
     * @since 3.22.0
     */
    public var vector:Dynamic;
    /**
     * A reference to the `Matter.Vertices` module.
     *
     * The `Matter.Vertices` module contains methods for creating and manipulating sets of vertices.
     * A set of vertices is an array of `Matter.Vector` with additional indexing properties inserted by `Vertices.create`.
     * A `Matter.Body` maintains a set of vertices to represent the shape of the object (its convex hull).
     *
     * @name Phaser.Physics.Matter.MatterPhysics#vertices
     * @type {MatterJS.VerticesFactory}
     * @since 3.22.0
     */
    public var vertices:Dynamic;
    /**
     * A reference to the `Matter.Vertices` module.
     *
     * The `Matter.Vertices` module contains methods for creating and manipulating sets of vertices.
     * A set of vertices is an array of `Matter.Vector` with additional indexing properties inserted by `Vertices.create`.
     * A `Matter.Body` maintains a set of vertices to represent the shape of the object (its convex hull).
     *
     * @name Phaser.Physics.Matter.MatterPhysics#verts
     * @type {MatterJS.VerticesFactory}
     * @since 3.14.0
     */
    public var verts:Dynamic;
    /**
     * This internal method is called when this class starts and retrieves the final Matter World Config.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#getConfig
     * @since 3.0.0
     *
     * @return {Phaser.Types.Physics.Matter.MatterWorldConfig} The Matter World Config.
     */
    public function getConfig():phaser.types.physics.matter.MatterWorldConfig;
    /**
     * Enables the Matter Attractors Plugin.
     *
     * The attractors plugin that makes it easy to apply continual forces on bodies.
     * It's possible to simulate effects such as wind, gravity and magnetism.
     *
     * https://github.com/liabru/matter-attractors
     *
     * This method is called automatically if `plugins.attractors` is set in the Matter World Config.
     * However, you can also call it directly from within your game.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#enableAttractorPlugin
     * @since 3.0.0
     *
     * @return {this} This Matter Physics instance.
     */
    public function enableAttractorPlugin():Dynamic;
    /**
     * Enables the Matter Wrap Plugin.
     *
     * The coordinate wrapping plugin that automatically wraps the position of bodies such that they always stay
     * within the given bounds. Upon crossing a boundary the body will appear on the opposite side of the bounds,
     * while maintaining its velocity.
     *
     * https://github.com/liabru/matter-wrap
     *
     * This method is called automatically if `plugins.wrap` is set in the Matter World Config.
     * However, you can also call it directly from within your game.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#enableWrapPlugin
     * @since 3.0.0
     *
     * @return {this} This Matter Physics instance.
     */
    public function enableWrapPlugin():Dynamic;
    /**
     * Enables the Matter Collision Events Plugin.
     *
     * Note that this plugin is enabled by default. So you should only ever need to call this
     * method if you have specifically disabled the plugin in your Matter World Config.
     * You can disable it by setting `plugins.collisionevents: false` in your Matter World Config.
     *
     * This plugin triggers three new events on Matter.Body:
     *
     * 1. `onCollide`
     * 2. `onCollideEnd`
     * 3. `onCollideActive`
     *
     * These events correspond to the Matter.js events `collisionStart`, `collisionActive` and `collisionEnd`, respectively.
     * You can listen to these events via Matter.Events or they will also be emitted from the Matter World.
     *
     * This plugin also extends Matter.Body with three convenience functions:
     *
     * `Matter.Body.setOnCollide(callback)`
     * `Matter.Body.setOnCollideEnd(callback)`
     * `Matter.Body.setOnCollideActive(callback)`
     *
     * You can register event callbacks by providing a function of type (pair: Matter.Pair) => void
     *
     * https://github.com/dxu/matter-collision-events
     *
     * @method Phaser.Physics.Matter.MatterPhysics#enableCollisionEventsPlugin
     * @since 3.22.0
     *
     * @return {this} This Matter Physics instance.
     */
    public function enableCollisionEventsPlugin():Dynamic;
    /**
     * Pauses the Matter World instance and sets `enabled` to `false`.
     *
     * A paused world will not run any simulations for the duration it is paused.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#pause
     * @fires Phaser.Physics.Matter.Events#PAUSE
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Matter.World} The Matter World object.
     */
    public function pause():phaser.physics.matter.World;
    /**
     * Resumes this Matter World instance from a paused state and sets `enabled` to `true`.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#resume
     * @since 3.0.0
     *
     * @return {Phaser.Physics.Matter.World} The Matter World object.
     */
    public function resume():phaser.physics.matter.World;
    /**
     * Sets the Matter Engine to run at fixed timestep of 60Hz and enables `autoUpdate`.
     * If you have set a custom `getDelta` function then this will override it.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#set60Hz
     * @since 3.4.0
     *
     * @return {this} This Matter Physics instance.
     */
    public function set60Hz():Dynamic;
    /**
     * Sets the Matter Engine to run at fixed timestep of 30Hz and enables `autoUpdate`.
     * If you have set a custom `getDelta` function then this will override it.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#set30Hz
     * @since 3.4.0
     *
     * @return {this} This Matter Physics instance.
     */
    public function set30Hz():Dynamic;
    /**
     * Manually advances the physics simulation by one iteration.
     *
     * You can optionally pass in the `delta` and `correction` values to be used by Engine.update.
     * If undefined they use the Matter defaults of 60Hz and no correction.
     *
     * Calling `step` directly bypasses any checks of `enabled` or `autoUpdate`.
     *
     * It also ignores any custom `getDelta` functions, as you should be passing the delta
     * value in to this call.
     *
     * You can adjust the number of iterations that Engine.update performs internally.
     * Use the Scene Matter Physics config object to set the following properties:
     *
     * positionIterations (defaults to 6)
     * velocityIterations (defaults to 4)
     * constraintIterations (defaults to 2)
     *
     * Adjusting these values can help performance in certain situations, depending on the physics requirements
     * of your game.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#step
     * @since 3.4.0
     *
     * @param {number} [delta=16.666] - The delta value.
     * @param {number} [correction=1] - Optional delta correction value.
     */
    public function step(?delta:Float, ?correction:Float):Void;
    /**
     * Checks if the vertices of the given body, or an array of bodies, contains the given point, or not.
     *
     * You can pass in either a single body, or an array of bodies to be checked. This method will
     * return `true` if _any_ of the bodies in the array contain the point. See the `intersectPoint` method if you need
     * to get a list of intersecting bodies.
     *
     * The point should be transformed into the Matter World coordinate system in advance. This happens by
     * default with Input Pointers, but if you wish to use points from another system you may need to
     * transform them before passing them.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#containsPoint
     * @since 3.22.0
     *
     * @param {(Phaser.Types.Physics.Matter.MatterBody|Phaser.Types.Physics.Matter.MatterBody[])} body - The body, or an array of bodies, to check against the point.
     * @param {number} x - The horizontal coordinate of the point.
     * @param {number} y - The vertical coordinate of the point.
     *
     * @return {boolean} `true` if the point is within one of the bodies given, otherwise `false`.
     */
    public function containsPoint(body:Dynamic, x:Float, y:Float):Bool;
    /**
     * Checks the given coordinates to see if any vertices of the given bodies contain it.
     *
     * If no bodies are provided it will search all bodies in the Matter World, including within Composites.
     *
     * The coordinates should be transformed into the Matter World coordinate system in advance. This happens by
     * default with Input Pointers, but if you wish to use coordinates from another system you may need to
     * transform them before passing them.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#intersectPoint
     * @since 3.22.0
     *
     * @param {number} x - The horizontal coordinate of the point.
     * @param {number} y - The vertical coordinate of the point.
     * @param {Phaser.Types.Physics.Matter.MatterBody[]} [bodies] - An array of bodies to check. If not provided it will search all bodies in the world.
     *
     * @return {Phaser.Types.Physics.Matter.MatterBody[]} An array of bodies which contain the given point.
     */
    public function intersectPoint(x:Float, y:Float, ?bodies:Array<phaser.types.physics.matter.MatterBody>):Array<phaser.types.physics.matter.MatterBody>;
    /**
     * Checks the given rectangular area to see if any vertices of the given bodies intersect with it.
     * Or, if the `outside` parameter is set to `true`, it checks to see which bodies do not
     * intersect with it.
     *
     * If no bodies are provided it will search all bodies in the Matter World, including within Composites.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#intersectRect
     * @since 3.22.0
     *
     * @param {number} x - The horizontal coordinate of the top-left of the area.
     * @param {number} y - The vertical coordinate of the top-left of the area.
     * @param {number} width - The width of the area.
     * @param {number} height - The height of the area.
     * @param {boolean} [outside=false] - If `false` it checks for vertices inside the area, if `true` it checks for vertices outside the area.
     * @param {Phaser.Types.Physics.Matter.MatterBody[]} [bodies] - An array of bodies to check. If not provided it will search all bodies in the world.
     *
     * @return {Phaser.Types.Physics.Matter.MatterBody[]} An array of bodies that intersect with the given area.
     */
    public function intersectRect(x:Float, y:Float, width:Float, height:Float, ?outside:Bool, ?bodies:Array<phaser.types.physics.matter.MatterBody>):Array<phaser.types.physics.matter.MatterBody>;
    /**
     * Checks the given ray segment to see if any vertices of the given bodies intersect with it.
     *
     * If no bodies are provided it will search all bodies in the Matter World.
     *
     * The width of the ray can be specified via the `rayWidth` parameter.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#intersectRay
     * @since 3.22.0
     *
     * @param {number} x1 - The horizontal coordinate of the start of the ray segment.
     * @param {number} y1 - The vertical coordinate of the start of the ray segment.
     * @param {number} x2 - The horizontal coordinate of the end of the ray segment.
     * @param {number} y2 - The vertical coordinate of the end of the ray segment.
     * @param {number} [rayWidth=1] - The width of the ray segment.
     * @param {Phaser.Types.Physics.Matter.MatterBody[]} [bodies] - An array of bodies to check. If not provided it will search all bodies in the world.
     *
     * @return {Phaser.Types.Physics.Matter.MatterBody[]} An array of bodies whos vertices intersect with the ray segment.
     */
    public function intersectRay(x1:Float, y1:Float, x2:Float, y2:Float, ?rayWidth:Float, ?bodies:Array<phaser.types.physics.matter.MatterBody>):Array<phaser.types.physics.matter.MatterBody>;
    /**
     * Checks the given Matter Body to see if it intersects with any of the given bodies.
     *
     * If no bodies are provided it will check against all bodies in the Matter World.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#intersectBody
     * @since 3.22.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBody} body - The target body.
     * @param {Phaser.Types.Physics.Matter.MatterBody[]} [bodies] - An array of bodies to check the target body against. If not provided it will search all bodies in the world.
     *
     * @return {Phaser.Types.Physics.Matter.MatterBody[]} An array of bodies whos vertices intersect with target body.
     */
    public function intersectBody(body:phaser.types.physics.matter.MatterBody, ?bodies:Array<phaser.types.physics.matter.MatterBody>):Array<phaser.types.physics.matter.MatterBody>;
    /**
     * Checks to see if the target body, or an array of target bodies, intersects with any of the given bodies.
     *
     * If intersection occurs this method will return `true` and, if provided, invoke the callbacks.
     *
     * If no bodies are provided for the second parameter the target will check again all bodies in the Matter World.
     *
     * Note that bodies can only overlap if they are in non-colliding collision groups or categories.
     *
     * If you provide a `processCallback` then the two bodies that overlap are sent to it. This callback
     * must return a boolean and is used to allow you to perform additional processing tests before a final
     * outcome is decided. If it returns `true` then the bodies are finally passed to the `overlapCallback`, if set.
     *
     * If you provide an `overlapCallback` then the matching pairs of overlapping bodies will be sent to it.
     *
     * Both callbacks have the following signature: `function (bodyA, bodyB, collisionInfo)` where `bodyA` is always
     * the target body. The `collisionInfo` object contains additional data, such as the angle and depth of penetration.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#overlap
     * @since 3.22.0
     *
     * @param {(Phaser.Types.Physics.Matter.MatterBody|Phaser.Types.Physics.Matter.MatterBody[])} target - The target body, or array of target bodies, to check.
     * @param {Phaser.Types.Physics.Matter.MatterBody[]} [bodies] - The second body, or array of bodies, to check. If falsey it will check against all bodies in the world.
     * @param {ArcadePhysicsCallback} [overlapCallback] - An optional callback function that is called if the bodies overlap.
     * @param {ArcadePhysicsCallback} [processCallback] - An optional callback function that lets you perform additional checks against the two bodies if they overlap. If this is set then `overlapCallback` will only be invoked if this callback returns `true`.
     * @param {*} [callbackContext] - The context, or scope, in which to run the callbacks.
     *
     * @return {boolean} `true` if the target body intersects with _any_ of the bodies given, otherwise `false`.
     */
    public function overlap(target:Dynamic, ?bodies:Array<phaser.types.physics.matter.MatterBody>, ?overlapCallback:ArcadePhysicsCallback, ?processCallback:ArcadePhysicsCallback, ?callbackContext:Dynamic):Bool;
    /**
     * Sets the collision filter category of all given Matter Bodies to the given value.
     *
     * This number must be a power of two between 2^0 (= 1) and 2^31.
     *
     * Bodies with different collision groups (see {@link #setCollisionGroup}) will only collide if their collision
     * categories are included in their collision masks (see {@link #setCollidesWith}).
     *
     * @method Phaser.Physics.Matter.MatterPhysics#setCollisionCategory
     * @since 3.22.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBody[]} bodies - An array of bodies to update. If falsey it will use all bodies in the world.
     * @param {number} value - Unique category bitfield.
     *
     * @return {this} This Matter Physics instance.
     */
    public function setCollisionCategory(bodies:Array<phaser.types.physics.matter.MatterBody>, value:Float):Dynamic;
    /**
     * Sets the collision filter group of all given Matter Bodies to the given value.
     *
     * If the group value is zero, or if two Matter Bodies have different group values,
     * they will collide according to the usual collision filter rules (see {@link #setCollisionCategory} and {@link #setCollisionGroup}).
     *
     * If two Matter Bodies have the same positive group value, they will always collide;
     * if they have the same negative group value they will never collide.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#setCollisionGroup
     * @since 3.22.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBody[]} bodies - An array of bodies to update. If falsey it will use all bodies in the world.
     * @param {number} value - Unique group index.
     *
     * @return {this} This Matter Physics instance.
     */
    public function setCollisionGroup(bodies:Array<phaser.types.physics.matter.MatterBody>, value:Float):Dynamic;
    /**
     * Sets the collision filter mask of all given Matter Bodies to the given value.
     *
     * Two Matter Bodies with different collision groups will only collide if each one includes the others
     * category in its mask based on a bitwise AND operation: `(categoryA & maskB) !== 0` and
     * `(categoryB & maskA) !== 0` are both true.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#setCollidesWith
     * @since 3.22.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBody[]} bodies - An array of bodies to update. If falsey it will use all bodies in the world.
     * @param {(number|number[])} categories - A unique category bitfield, or an array of them.
     *
     * @return {this} This Matter Physics instance.
     */
    public function setCollidesWith(bodies:Array<phaser.types.physics.matter.MatterBody>, categories:Dynamic):Dynamic;
    /**
     * Takes an array and returns a new array made from all of the Matter Bodies found in the original array.
     *
     * For example, passing in Matter Game Objects, such as a bunch of Matter Sprites, to this method, would
     * return an array containing all of their native Matter Body objects.
     *
     * If the `bodies` argument is falsey, it will return all bodies in the world.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#getMatterBodies
     * @since 3.22.0
     *
     * @param {array} [bodies] - An array of objects to extract the bodies from. If falsey, it will return all bodies in the world.
     *
     * @return {MatterJS.BodyType[]} An array of native Matter Body objects.
     */
    public function getMatterBodies(?bodies:Array<Dynamic>):Array<Dynamic>;
    /**
     * Sets both the horizontal and vertical linear velocity of the physics bodies.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#setVelocity
     * @since 3.22.0
     *
     * @param {(Phaser.Types.Physics.Matter.MatterBody|Phaser.Types.Physics.Matter.MatterBody[])} bodies - Either a single Body, or an array of bodies to update. If falsey it will use all bodies in the world.
     * @param {number} x - The horizontal linear velocity value.
     * @param {number} y - The vertical linear velocity value.
     *
     * @return {this} This Matter Physics instance.
     */
    public function setVelocity(bodies:Dynamic, x:Float, y:Float):Dynamic;
    /**
     * Sets just the horizontal linear velocity of the physics bodies.
     * The vertical velocity of the body is unchanged.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#setVelocityX
     * @since 3.22.0
     *
     * @param {(Phaser.Types.Physics.Matter.MatterBody|Phaser.Types.Physics.Matter.MatterBody[])} bodies - Either a single Body, or an array of bodies to update. If falsey it will use all bodies in the world.
     * @param {number} x - The horizontal linear velocity value.
     *
     * @return {this} This Matter Physics instance.
     */
    public function setVelocityX(bodies:Dynamic, x:Float):Dynamic;
    /**
     * Sets just the vertical linear velocity of the physics bodies.
     * The horizontal velocity of the body is unchanged.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#setVelocityY
     * @since 3.22.0
     *
     * @param {(Phaser.Types.Physics.Matter.MatterBody|Phaser.Types.Physics.Matter.MatterBody[])} bodies - Either a single Body, or an array of bodies to update. If falsey it will use all bodies in the world.
     * @param {number} y - The vertical linear velocity value.
     *
     * @return {this} This Matter Physics instance.
     */
    public function setVelocityY(bodies:Dynamic, y:Float):Dynamic;
    /**
     * Sets the angular velocity of the bodies instantly.
     * Position, angle, force etc. are unchanged.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#setAngularVelocity
     * @since 3.22.0
     *
     * @param {(Phaser.Types.Physics.Matter.MatterBody|Phaser.Types.Physics.Matter.MatterBody[])} bodies - Either a single Body, or an array of bodies to update. If falsey it will use all bodies in the world.
     * @param {number} value - The angular velocity.
     *
     * @return {this} This Matter Physics instance.
     */
    public function setAngularVelocity(bodies:Dynamic, value:Float):Dynamic;
    /**
     * Applies a force to a body, at the bodies current position, including resulting torque.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#applyForce
     * @since 3.22.0
     *
     * @param {(Phaser.Types.Physics.Matter.MatterBody|Phaser.Types.Physics.Matter.MatterBody[])} bodies - Either a single Body, or an array of bodies to update. If falsey it will use all bodies in the world.
     * @param {Phaser.Types.Math.Vector2Like} force - A Vector that specifies the force to apply.
     *
     * @return {this} This Matter Physics instance.
     */
    public function applyForce(bodies:Dynamic, force:phaser.types.math.Vector2Like):Dynamic;
    /**
     * Applies a force to a body, from the given world position, including resulting torque.
     * If no angle is given, the current body angle is used.
     *
     * Use very small speed values, such as 0.1, depending on the mass and required velocity.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#applyForceFromPosition
     * @since 3.22.0
     *
     * @param {(Phaser.Types.Physics.Matter.MatterBody|Phaser.Types.Physics.Matter.MatterBody[])} bodies - Either a single Body, or an array of bodies to update. If falsey it will use all bodies in the world.
     * @param {Phaser.Types.Math.Vector2Like} position - A Vector that specifies the world-space position to apply the force at.
     * @param {number} speed - A speed value to be applied to a directional force.
     * @param {number} [angle] - The angle, in radians, to apply the force from. Leave undefined to use the current body angle.
     *
     * @return {this} This Matter Physics instance.
     */
    public function applyForceFromPosition(bodies:Dynamic, position:phaser.types.math.Vector2Like, speed:Float, ?angle:Float):Dynamic;
    /**
     * Apply a force to a body based on the given angle and speed.
     * If no angle is given, the current body angle is used.
     *
     * Use very small speed values, such as 0.1, depending on the mass and required velocity.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#applyForceFromAngle
     * @since 3.22.0
     *
     * @param {(Phaser.Types.Physics.Matter.MatterBody|Phaser.Types.Physics.Matter.MatterBody[])} bodies - Either a single Body, or an array of bodies to update. If falsey it will use all bodies in the world.
     * @param {number} speed - A speed value to be applied to a directional force.
     * @param {number} [angle] - The angle, in radians, to apply the force from. Leave undefined to use the current body angle.
     *
     * @return {this} This Matter Physics instance.
     */
    public function applyForceFromAngle(bodies:Dynamic, speed:Float, ?angle:Float):Dynamic;
    /**
     * Returns the length of the given constraint, which is the distance between the two points.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#getConstraintLength
     * @since 3.22.0
     *
     * @param {MatterJS.ConstraintType} constraint - The constraint to get the length from.
     *
     * @return {number} The length of the constraint.
     */
    public function getConstraintLength(constraint:Dynamic):Float;
    /**
     * Aligns a Body, or Matter Game Object, against the given coordinates.
     *
     * The alignment takes place using the body bounds, which take into consideration things
     * like body scale and rotation.
     *
     * Although a Body has a `position` property, it is based on the center of mass for the body,
     * not a dimension based center. This makes aligning bodies difficult, especially if they have
     * rotated or scaled. This method will derive the correct position based on the body bounds and
     * its center of mass offset, in order to align the body with the given coordinate.
     *
     * For example, if you wanted to align a body so it sat in the bottom-center of the
     * Scene, and the world was 800 x 600 in size:
     *
     * ```javascript
     * this.matter.alignBody(body, 400, 600, Phaser.Display.Align.BOTTOM_CENTER);
     * ```
     *
     * You pass in 400 for the x coordinate, because that is the center of the world, and 600 for
     * the y coordinate, as that is the base of the world.
     *
     * @method Phaser.Physics.Matter.MatterPhysics#alignBody
     * @since 3.22.0
     *
     * @param {Phaser.Types.Physics.Matter.MatterBody} body - The Body to align.
     * @param {number} x - The horizontal position to align the body to.
     * @param {number} y - The vertical position to align the body to.
     * @param {number} align - One of the `Phaser.Display.Align` constants, such as `Phaser.Display.Align.TOP_LEFT`.
     *
     * @return {this} This Matter Physics instance.
     */
    public function alignBody(body:phaser.types.physics.matter.MatterBody, x:Float, y:Float, align:Float):Dynamic;
}
