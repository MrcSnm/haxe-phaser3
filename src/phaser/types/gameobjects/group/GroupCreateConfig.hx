package phaser.types.gameobjects.group;

/**
 * The total number of objects created will be
 *
 *     key.length * frame.length * frameQuantity * (yoyo ? 2 : 1) * (1 + repeat)
 *
 * If `max` is nonzero, then the total created will not exceed `max`.
 *
 * `key` is required. {@link Phaser.GameObjects.Group#defaultKey} is not used.
 *
 * @typedef {object} Phaser.Types.GameObjects.Group.GroupCreateConfig
 * @since 3.0.0
 *
 * @property {?Function} [classType] - The class of each new Game Object.
 * @property {(string|string[])} [key] - The texture key of each new Game Object.
 * @property {?(string|string[]|integer|integer[])} [frame=null] - The texture frame of each new Game Object.
 * @property {?integer} [quantity=false] - The number of Game Objects to create. If set, this overrides the `frameQuantity` value. Use `frameQuantity` for more advanced control.
 * @property {?boolean} [visible=true] - The visible state of each new Game Object.
 * @property {?boolean} [active=true] - The active state of each new Game Object.
 * @property {?integer} [repeat=0] - The number of times each `key` × `frame` combination will be *repeated* (after the first combination).
 * @property {?boolean} [randomKey=false] - Select a `key` at random.
 * @property {?boolean} [randomFrame=false] - Select a `frame` at random.
 * @property {?boolean} [yoyo=false] - Select keys and frames by moving forward then backward through `key` and `frame`.
 * @property {?integer} [frameQuantity=1] - The number of times each `frame` should be combined with one `key`.
 * @property {?integer} [max=0] - The maximum number of new Game Objects to create. 0 is no maximum.
 * @property {?object} [setXY]
 * @property {?number} [setXY.x=0] - The horizontal position of each new Game Object.
 * @property {?number} [setXY.y=0] - The vertical position of each new Game Object.
 * @property {?number} [setXY.stepX=0] - Increment each Game Object's horizontal position from the previous by this amount, starting from `setXY.x`.
 * @property {?number} [setXY.stepY=0] - Increment each Game Object's vertical position from the previous by this amount, starting from `setXY.y`.
 * @property {?object} [setRotation]
 * @property {?number} [setRotation.value=0] - Rotation of each new Game Object.
 * @property {?number} [setRotation.step=0] - Increment each Game Object's rotation from the previous by this amount, starting at `setRotation.value`.
 * @property {?object} [setScale]
 * @property {?number} [setScale.x=0] - The horizontal scale of each new Game Object.
 * @property {?number} [setScale.y=0] - The vertical scale of each new Game Object.
 * @property {?number} [setScale.stepX=0] - Increment each Game Object's horizontal scale from the previous by this amount, starting from `setScale.x`.
 * @property {?number} [setScale.stepY=0] - Increment each Game object's vertical scale from the previous by this amount, starting from `setScale.y`.
 * @property {?object} [setAlpha]
 * @property {?number} [setAlpha.value=0] - The alpha value of each new Game Object.
 * @property {?number} [setAlpha.step=0] - Increment each Game Object's alpha from the previous by this amount, starting from `setAlpha.value`.
 * @property {?object} [setDepth]
 * @property {?number} [setDepth.value=0] - The depth value of each new Game Object.
 * @property {?number} [setDepth.step=0] - Increment each Game Object's depth from the previous by this amount, starting from `setDepth.value`.
 * @property {?object} [setScrollFactor]
 * @property {?number} [setScrollFactor.x=0] - The horizontal scroll factor of each new Game Object.
 * @property {?number} [setScrollFactor.y=0] - The vertical scroll factor of each new Game Object.
 * @property {?number} [setScrollFactor.stepX=0] - Increment each Game Object's horizontal scroll factor from the previous by this amount, starting from `setScrollFactor.x`.
 * @property {?number} [setScrollFactor.stepY=0] - Increment each Game object's vertical scroll factor from the previous by this amount, starting from `setScrollFactor.y`.
 * @property {?*} [hitArea] - A geometric shape that defines the hit area for the Game Object.
 * @property {?Phaser.Types.Input.HitAreaCallback} [hitAreaCallback] - A callback to be invoked when the Game Object is interacted with.
 * @property {?(false|Phaser.Types.Actions.GridAlignConfig)} [gridAlign=false] - Align the new Game Objects in a grid using these settings.
 *
 * @see Phaser.Actions.GridAlign
 * @see Phaser.Actions.SetAlpha
 * @see Phaser.Actions.SetHitArea
 * @see Phaser.Actions.SetRotation
 * @see Phaser.Actions.SetScale
 * @see Phaser.Actions.SetXY
 * @see Phaser.Actions.SetDepth
 * @see Phaser.Actions.SetScrollFactor
 * @see Phaser.GameObjects.Group#createFromConfig
 * @see Phaser.Utils.Array.Range
 */
typedef GroupCreateConfig = {
    @:optional var classType:Dynamic;
    @:optional var key:Dynamic;
    @:optional var frame:Dynamic;
    @:optional var quantity:Int;
    @:optional var visible:Bool;
    @:optional var active:Bool;
    @:optional var repeat:Int;
    @:optional var randomKey:Bool;
    @:optional var randomFrame:Bool;
    @:optional var yoyo:Bool;
    @:optional var frameQuantity:Int;
    @:optional var max:Int;
    @:optional var setXY:Dynamic;
    @:optional var setRotation:Dynamic;
    @:optional var setScale:Dynamic;
    @:optional var setAlpha:Dynamic;
    @:optional var setDepth:Dynamic;
    @:optional var setScrollFactor:Dynamic;
    @:optional var hitArea:Dynamic;
    @:optional var hitAreaCallback:phaser.types.input.HitAreaCallback;
    @:optional var gridAlign:Dynamic;
};
