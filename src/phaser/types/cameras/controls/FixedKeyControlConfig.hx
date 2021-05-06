package phaser.types.cameras.controls;

/**
 * @typedef {object} Phaser.Types.Cameras.Controls.FixedKeyControlConfig
 * @since 3.0.0
 *
 * @property {Phaser.Cameras.Scene2D.Camera} [camera] - The Camera that this Control will update.
 * @property {Phaser.Input.Keyboard.Key} [left] - The Key to be pressed that will move the Camera left.
 * @property {Phaser.Input.Keyboard.Key} [right] - The Key to be pressed that will move the Camera right.
 * @property {Phaser.Input.Keyboard.Key} [up] - The Key to be pressed that will move the Camera up.
 * @property {Phaser.Input.Keyboard.Key} [down] - The Key to be pressed that will move the Camera down.
 * @property {Phaser.Input.Keyboard.Key} [zoomIn] - The Key to be pressed that will zoom the Camera in.
 * @property {Phaser.Input.Keyboard.Key} [zoomOut] - The Key to be pressed that will zoom the Camera out.
 * @property {number} [zoomSpeed=0.01] - The speed at which the camera will zoom if the `zoomIn` or `zoomOut` keys are pressed.
 * @property {(number|{x:number,y:number})} [speed=0] - The horizontal and vertical speed the camera will move.
 * @property {number} [minZoom=0.001] - The smallest zoom value the camera will reach when zoomed out.
 * @property {number} [maxZoom=1000] - The largest zoom value the camera will reach when zoomed in.
 */
typedef FixedKeyControlConfig = {
    @:optional var camera:phaser.cameras.scene2d.Camera;
    @:optional var left:phaser.input.keyboard.Key;
    @:optional var right:phaser.input.keyboard.Key;
    @:optional var up:phaser.input.keyboard.Key;
    @:optional var down:phaser.input.keyboard.Key;
    @:optional var zoomIn:phaser.input.keyboard.Key;
    @:optional var zoomOut:phaser.input.keyboard.Key;
    @:optional var zoomSpeed:Float;
    @:optional var speed:Dynamic;
    @:optional var minZoom:Float;
    @:optional var maxZoom:Float;
};
