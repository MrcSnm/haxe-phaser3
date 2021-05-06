package phaser.curves;

/**
 * @classdesc
 * A Path combines multiple Curves into one continuous compound curve.
 * It does not matter how many Curves are in the Path or what type they are.
 *
 * A Curve in a Path does not have to start where the previous Curve ends - that is to say, a Path does not
 * have to be an uninterrupted curve. Only the order of the Curves influences the actual points on the Path.
 *
 * @class Path
 * @memberof Phaser.Curves
 * @constructor
 * @since 3.0.0
 *
 * @param {number} [x=0] - The X coordinate of the Path's starting point or a {@link Phaser.Types.Curves.JSONPath}.
 * @param {number} [y=0] - The Y coordinate of the Path's starting point.
 */
@:native("Phaser.Curves.Path")
extern class Path {
    public function new(?x:Float, ?y:Float);
    /**
     * The name of this Path.
     * Empty by default and never populated by Phaser, this is left for developers to use.
     *
     * @name Phaser.Curves.Path#name
     * @type {string}
     * @default ''
     * @since 3.0.0
     */
    public var name:String;
    /**
     * The list of Curves which make up this Path.
     *
     * @name Phaser.Curves.Path#curves
     * @type {Phaser.Curves.Curve[]}
     * @default []
     * @since 3.0.0
     */
    public var curves:Array<phaser.curves.Curve>;
    /**
     * The cached length of each Curve in the Path.
     *
     * Used internally by {@link #getCurveLengths}.
     *
     * @name Phaser.Curves.Path#cacheLengths
     * @type {number[]}
     * @default []
     * @since 3.0.0
     */
    public var cacheLengths:Array<Float>;
    /**
     * Automatically closes the path.
     *
     * @name Phaser.Curves.Path#autoClose
     * @type {boolean}
     * @default false
     * @since 3.0.0
     */
    public var autoClose:Bool;
    /**
     * The starting point of the Path.
     *
     * This is not necessarily equivalent to the starting point of the first Curve in the Path. In an empty Path, it's also treated as the ending point.
     *
     * @name Phaser.Curves.Path#startPoint
     * @type {Phaser.Math.Vector2}
     * @since 3.0.0
     */
    public var startPoint:phaser.math.Vector2;
    /**
     * Appends a Curve to the end of the Path.
     *
     * The Curve does not have to start where the Path ends or, for an empty Path, at its defined starting point.
     *
     * @method Phaser.Curves.Path#add
     * @since 3.0.0
     *
     * @param {Phaser.Curves.Curve} curve - The Curve to append.
     *
     * @return {this} This Path object.
     */
    public function add(curve:phaser.curves.Curve):Dynamic;
    /**
     * Creates a circular Ellipse Curve positioned at the end of the Path.
     *
     * @method Phaser.Curves.Path#circleTo
     * @since 3.0.0
     *
     * @param {number} radius - The radius of the circle.
     * @param {boolean} [clockwise=false] - `true` to create a clockwise circle as opposed to a counter-clockwise circle.
     * @param {number} [rotation=0] - The rotation of the circle in degrees.
     *
     * @return {this} This Path object.
     */
    public function circleTo(radius:Float, ?clockwise:Bool, ?rotation:Float):Dynamic;
    /**
     * Ensures that the Path is closed.
     *
     * A closed Path starts and ends at the same point. If the Path is not closed, a straight Line Curve will be created from the ending point directly to the starting point. During the check, the actual starting point of the Path, i.e. the starting point of the first Curve, will be used as opposed to the Path's defined {@link startPoint}, which could differ.
     *
     * Calling this method on an empty Path will result in an error.
     *
     * @method Phaser.Curves.Path#closePath
     * @since 3.0.0
     *
     * @return {this} This Path object.
     */
    public function closePath():Dynamic;
    /**
     * Creates a cubic bezier curve starting at the previous end point and ending at p3, using p1 and p2 as control points.
     *
     * @method Phaser.Curves.Path#cubicBezierTo
     * @since 3.0.0
     *
     * @param {(number|Phaser.Math.Vector2)} x - The x coordinate of the end point. Or, if a Vector2, the p1 value.
     * @param {(number|Phaser.Math.Vector2)} y - The y coordinate of the end point. Or, if a Vector2, the p2 value.
     * @param {(number|Phaser.Math.Vector2)} control1X - The x coordinate of the first control point. Or, if a Vector2, the p3 value.
     * @param {number} [control1Y] - The y coordinate of the first control point. Not used if Vector2s are provided as the first 3 arguments.
     * @param {number} [control2X] - The x coordinate of the second control point. Not used if Vector2s are provided as the first 3 arguments.
     * @param {number} [control2Y] - The y coordinate of the second control point. Not used if Vector2s are provided as the first 3 arguments.
     *
     * @return {this} This Path object.
     */
    public function cubicBezierTo(x:Dynamic, y:Dynamic, control1X:Dynamic, ?control1Y:Float, ?control2X:Float, ?control2Y:Float):Dynamic;
    /**
     * Creates a Quadratic Bezier Curve starting at the ending point of the Path.
     *
     * @method Phaser.Curves.Path#quadraticBezierTo
     * @since 3.2.0
     *
     * @param {(number|Phaser.Math.Vector2[])} x - The X coordinate of the second control point or, if it's a `Vector2`, the first control point.
     * @param {number} [y] - The Y coordinate of the second control point or, if `x` is a `Vector2`, the second control point.
     * @param {number} [controlX] - If `x` is not a `Vector2`, the X coordinate of the first control point.
     * @param {number} [controlY] - If `x` is not a `Vector2`, the Y coordinate of the first control point.
     *
     * @return {this} This Path object.
     */
    public function quadraticBezierTo(x:Dynamic, ?y:Float, ?controlX:Float, ?controlY:Float):Dynamic;
    /**
     * Draws all Curves in the Path to a Graphics Game Object.
     *
     * @method Phaser.Curves.Path#draw
     * @since 3.0.0
     *
     * @generic {Phaser.GameObjects.Graphics} G - [out,$return]
     *
     * @param {Phaser.GameObjects.Graphics} graphics - The Graphics Game Object to draw to.
     * @param {integer} [pointsTotal=32] - The number of points to draw for each Curve. Higher numbers result in a smoother curve but require more processing.
     *
     * @return {Phaser.GameObjects.Graphics} The Graphics object which was drawn to.
     */
    public function draw(graphics:phaser.gameobjects.Graphics, ?pointsTotal:Int):phaser.gameobjects.Graphics;
    /**
     * Creates an ellipse curve positioned at the previous end point, using the given parameters.
     *
     * @method Phaser.Curves.Path#ellipseTo
     * @since 3.0.0
     *
     * @param {number} [xRadius=0] - The horizontal radius of ellipse.
     * @param {number} [yRadius=0] - The vertical radius of ellipse.
     * @param {integer} [startAngle=0] - The start angle of the ellipse, in degrees.
     * @param {integer} [endAngle=360] - The end angle of the ellipse, in degrees.
     * @param {boolean} [clockwise=false] - Whether the ellipse angles are given as clockwise (`true`) or counter-clockwise (`false`).
     * @param {number} [rotation=0] - The rotation of the ellipse, in degrees.
     *
     * @return {this} This Path object.
     */
    public function ellipseTo(?xRadius:Float, ?yRadius:Float, ?startAngle:Int, ?endAngle:Int, ?clockwise:Bool, ?rotation:Float):Dynamic;
    /**
     * Creates a Path from a Path Configuration object.
     *
     * The provided object should be a {@link Phaser.Types.Curves.JSONPath}, as returned by {@link #toJSON}. Providing a malformed object may cause errors.
     *
     * @method Phaser.Curves.Path#fromJSON
     * @since 3.0.0
     *
     * @param {Phaser.Types.Curves.JSONPath} data - The JSON object containing the Path data.
     *
     * @return {this} This Path object.
     */
    public function fromJSON(data:phaser.types.curves.JSONPath):Dynamic;
    /**
     * Returns a Rectangle with a position and size matching the bounds of this Path.
     *
     * @method Phaser.Curves.Path#getBounds
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {Phaser.Geom.Rectangle} [out] - The Rectangle to store the bounds in.
     * @param {integer} [accuracy=16] - The accuracy of the bounds calculations. Higher values are more accurate at the cost of calculation speed.
     *
     * @return {Phaser.Geom.Rectangle} The modified `out` Rectangle, or a new Rectangle if none was provided.
     */
    public function getBounds(?out:phaser.geom.Rectangle, ?accuracy:Int):phaser.geom.Rectangle;
    /**
     * Returns an array containing the length of the Path at the end of each Curve.
     *
     * The result of this method will be cached to avoid recalculating it in subsequent calls. The cache is only invalidated when the {@link #curves} array changes in length, leading to potential inaccuracies if a Curve in the Path is changed, or if a Curve is removed and another is added in its place.
     *
     * @method Phaser.Curves.Path#getCurveLengths
     * @since 3.0.0
     *
     * @return {number[]} An array containing the length of the Path at the end of each one of its Curves.
     */
    public function getCurveLengths():Array<Float>;
    /**
     * Returns the ending point of the Path.
     *
     * A Path's ending point is equivalent to the ending point of the last Curve in the Path. For an empty Path, the ending point is at the Path's defined {@link #startPoint}.
     *
     * @method Phaser.Curves.Path#getEndPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {Phaser.Math.Vector2} [out] - The object to store the point in.
     *
     * @return {Phaser.Math.Vector2} The modified `out` object, or a new Vector2 if none was provided.
     */
    public function getEndPoint(?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Returns the total length of the Path.
     *
     * @see {@link #getCurveLengths}
     *
     * @method Phaser.Curves.Path#getLength
     * @since 3.0.0
     *
     * @return {number} The total length of the Path.
     */
    public function getLength():Float;
    /**
     * Calculates the coordinates of the point at the given normalized location (between 0 and 1) on the Path.
     *
     * The location is relative to the entire Path, not to an individual Curve. A location of 0.5 is always in the middle of the Path and is thus an equal distance away from both its starting and ending points. In a Path with one Curve, it would be in the middle of the Curve; in a Path with two Curves, it could be anywhere on either one of them depending on their lengths.
     *
     * @method Phaser.Curves.Path#getPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {number} t - The location of the point to return, between 0 and 1.
     * @param {Phaser.Math.Vector2} [out] - The object in which to store the calculated point.
     *
     * @return {?Phaser.Math.Vector2} The modified `out` object, or a new `Vector2` if none was provided.
     */
    public function getPoint(t:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Get a sequence of points on the path.
     *
     * @method Phaser.Curves.Path#getPoints
     * @since 3.0.0
     *
     * @param {integer} [divisions=12] - The number of divisions per resolution per curve.
     *
     * @return {Phaser.Math.Vector2[]} An array of Vector2 objects that containing the points along the Path.
     */
    public function getPoints(?divisions:Int):Array<phaser.math.Vector2>;
    /**
     * Returns a randomly chosen point anywhere on the path. This follows the same rules as `getPoint` in that it may return a point on any Curve inside this path.
     *
     * When calling this method multiple times, the points are not guaranteed to be equally spaced spatially.
     *
     * @method Phaser.Curves.Path#getRandomPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {Phaser.Math.Vector2} [out] - `Vector2` instance that should be used for storing the result. If `undefined` a new `Vector2` will be created.
     *
     * @return {Phaser.Math.Vector2} The modified `out` object, or a new `Vector2` if none was provided.
     */
    public function getRandomPoint(?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Divides this Path into a set of equally spaced points,
     *
     * The resulting points are equally spaced with respect to the points' position on the path, but not necessarily equally spaced spatially.
     *
     * @method Phaser.Curves.Path#getSpacedPoints
     * @since 3.0.0
     *
     * @param {integer} [divisions=40] - The amount of points to divide this Path into.
     *
     * @return {Phaser.Math.Vector2[]} A list of the points this path was subdivided into.
     */
    public function getSpacedPoints(?divisions:Int):Array<phaser.math.Vector2>;
    /**
     * Returns the starting point of the Path.
     *
     * @method Phaser.Curves.Path#getStartPoint
     * @since 3.0.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {Phaser.Math.Vector2} [out] - `Vector2` instance that should be used for storing the result. If `undefined` a new `Vector2` will be created.
     *
     * @return {Phaser.Math.Vector2} The modified `out` object, or a new Vector2 if none was provided.
     */
    public function getStartPoint(?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Gets a unit vector tangent at a relative position on the path.
     *
     * @method Phaser.Curves.Path#getTangent
     * @since 3.23.0
     *
     * @generic {Phaser.Math.Vector2} O - [out,$return]
     *
     * @param {number} t - The relative position on the path, [0..1].
     * @param {Phaser.Math.Vector2} [out] - A vector to store the result in.
     *
     * @return {Phaser.Math.Vector2} Vector approximating the tangent line at the point t (delta +/- 0.0001)
     */
    public function getTangent(t:Float, ?out:phaser.math.Vector2):phaser.math.Vector2;
    /**
     * Creates a line curve from the previous end point to x/y.
     *
     * @method Phaser.Curves.Path#lineTo
     * @since 3.0.0
     *
     * @param {(number|Phaser.Math.Vector2)} x - The X coordinate of the line's end point, or a `Vector2` containing the entire end point.
     * @param {number} [y] - The Y coordinate of the line's end point, if a number was passed as the X parameter.
     *
     * @return {this} This Path object.
     */
    public function lineTo(x:Dynamic, ?y:Float):Dynamic;
    /**
     * Creates a spline curve starting at the previous end point, using the given points on the curve.
     *
     * @method Phaser.Curves.Path#splineTo
     * @since 3.0.0
     *
     * @param {Phaser.Math.Vector2[]} points - The points the newly created spline curve should consist of.
     *
     * @return {this} This Path object.
     */
    public function splineTo(points:Array<phaser.math.Vector2>):Dynamic;
    /**
     * Creates a "gap" in this path from the path's current end point to the given coordinates.
     *
     * After calling this function, this Path's end point will be equal to the given coordinates
     *
     * @method Phaser.Curves.Path#moveTo
     * @since 3.0.0
     *
     * @param {(number|Phaser.Math.Vector2)} x - The X coordinate of the position to move the path's end point to, or a `Vector2` containing the entire new end point.
     * @param {number} y - The Y coordinate of the position to move the path's end point to, if a number was passed as the X coordinate.
     *
     * @return {this} This Path object.
     */
    public function moveTo(x:Dynamic, y:Float):Dynamic;
    /**
     * Converts this Path to a JSON object containing the path information and its constituent curves.
     *
     * @method Phaser.Curves.Path#toJSON
     * @since 3.0.0
     *
     * @return {Phaser.Types.Curves.JSONPath} The JSON object containing this path's data.
     */
    public function toJSON():phaser.types.curves.JSONPath;
    /**
     * cacheLengths must be recalculated.
     *
     * @method Phaser.Curves.Path#updateArcLengths
     * @since 3.0.0
     */
    public function updateArcLengths():Void;
    /**
     * Disposes of this Path, clearing its internal references to objects so they can be garbage-collected.
     *
     * @method Phaser.Curves.Path#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
