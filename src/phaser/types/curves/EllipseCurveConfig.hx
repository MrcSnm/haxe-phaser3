package phaser.types.curves;

/**
 * @typedef {object} Phaser.Types.Curves.EllipseCurveConfig
 *
 * @property {number} [x=0] - The x coordinate of the ellipse.
 * @property {number} [y=0] - The y coordinate of the ellipse.
 * @property {number} [xRadius=0] - The horizontal radius of the ellipse.
 * @property {number} [yRadius=0] - The vertical radius of the ellipse.
 * @property {number} [startAngle=0] - The start angle of the ellipse, in degrees.
 * @property {number} [endAngle=360] - The end angle of the ellipse, in degrees.
 * @property {boolean} [clockwise=false] - Sets if the the ellipse rotation is clockwise (true) or anti-clockwise (false)
 * @property {number} [rotation=0] - The rotation of the ellipse, in degrees.
 */
typedef EllipseCurveConfig = {
    @:optional var x:Float;
    @:optional var y:Float;
    @:optional var xRadius:Float;
    @:optional var yRadius:Float;
    @:optional var startAngle:Float;
    @:optional var endAngle:Float;
    @:optional var clockwise:Bool;
    @:optional var rotation:Float;
};
