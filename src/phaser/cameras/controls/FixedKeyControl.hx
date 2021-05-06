package phaser.cameras.controls;

/**
 * @classdesc
 * A Fixed Key Camera Control.
 *
 * This allows you to control the movement and zoom of a camera using the defined keys.
 *
 * ```javascript
 * var camControl = new FixedKeyControl({
 *     camera: this.cameras.main,
 *     left: cursors.left,
 *     right: cursors.right,
 *     speed: float OR { x: 0, y: 0 }
 * });
 * ```
 *
 * Movement is precise and has no 'smoothing' applied to it.
 *
 * You must call the `update` method of this controller every frame.
 *
 * @class FixedKeyControl
 * @memberof Phaser.Cameras.Controls
 * @constructor
 * @since 3.0.0
 *
 * @param {Phaser.Types.Cameras.Controls.FixedKeyControlConfig} config - The Fixed Key Control configuration object.
 */
@:native("Phaser.Cameras.Controls.FixedKeyControl")
extern class FixedKeyControl {
    public function new(config:phaser.types.cameras.controls.FixedKeyControlConfig);
    /**
     * The Camera that this Control will update.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#camera
     * @type {?Phaser.Cameras.Scene2D.Camera}
     * @default null
     * @since 3.0.0
     */
    public var camera:phaser.cameras.scene2d.Camera;
    /**
     * The Key to be pressed that will move the Camera left.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#left
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var left:phaser.input.keyboard.Key;
    /**
     * The Key to be pressed that will move the Camera right.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#right
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var right:phaser.input.keyboard.Key;
    /**
     * The Key to be pressed that will move the Camera up.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#up
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var up:phaser.input.keyboard.Key;
    /**
     * The Key to be pressed that will move the Camera down.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#down
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var down:phaser.input.keyboard.Key;
    /**
     * The Key to be pressed that will zoom the Camera in.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#zoomIn
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var zoomIn:phaser.input.keyboard.Key;
    /**
     * The Key to be pressed that will zoom the Camera out.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#zoomOut
     * @type {?Phaser.Input.Keyboard.Key}
     * @default null
     * @since 3.0.0
     */
    public var zoomOut:phaser.input.keyboard.Key;
    /**
     * The speed at which the camera will zoom if the `zoomIn` or `zoomOut` keys are pressed.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#zoomSpeed
     * @type {number}
     * @default 0.01
     * @since 3.0.0
     */
    public var zoomSpeed:Float;
    /**
     * The smallest zoom value the camera will reach when zoomed out.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#minZoom
     * @type {number}
     * @default 0.001
     * @since 3.53.0
     */
    public var minZoom:Float;
    /**
     * The largest zoom value the camera will reach when zoomed in.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#maxZoom
     * @type {number}
     * @default 1000
     * @since 3.53.0
     */
    public var maxZoom:Float;
    /**
     * The horizontal speed the camera will move.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#speedX
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var speedX:Float;
    /**
     * The vertical speed the camera will move.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#speedY
     * @type {number}
     * @default 0
     * @since 3.0.0
     */
    public var speedY:Float;
    /**
     * A flag controlling if the Controls will update the Camera or not.
     *
     * @name Phaser.Cameras.Controls.FixedKeyControl#active
     * @type {boolean}
     * @since 3.0.0
     */
    public var active:Bool;
    /**
     * Starts the Key Control running, providing it has been linked to a camera.
     *
     * @method Phaser.Cameras.Controls.FixedKeyControl#start
     * @since 3.0.0
     *
     * @return {this} This Key Control instance.
     */
    public function start():Dynamic;
    /**
     * Stops this Key Control from running. Call `start` to start it again.
     *
     * @method Phaser.Cameras.Controls.FixedKeyControl#stop
     * @since 3.0.0
     *
     * @return {this} This Key Control instance.
     */
    public function stop():Dynamic;
    /**
     * Binds this Key Control to a camera.
     *
     * @method Phaser.Cameras.Controls.FixedKeyControl#setCamera
     * @since 3.0.0
     *
     * @param {Phaser.Cameras.Scene2D.Camera} camera - The camera to bind this Key Control to.
     *
     * @return {this} This Key Control instance.
     */
    public function setCamera(camera:phaser.cameras.scene2d.Camera):Dynamic;
    /**
     * Applies the results of pressing the control keys to the Camera.
     *
     * You must call this every step, it is not called automatically.
     *
     * @method Phaser.Cameras.Controls.FixedKeyControl#update
     * @since 3.0.0
     *
     * @param {number} delta - The delta time in ms since the last frame. This is a smoothed and capped value based on the FPS rate.
     */
    public function update(delta:Float):Void;
    /**
     * Destroys this Key Control.
     *
     * @method Phaser.Cameras.Controls.FixedKeyControl#destroy
     * @since 3.0.0
     */
    public function destroy():Void;
}
