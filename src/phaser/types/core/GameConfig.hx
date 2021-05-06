package phaser.types.core;

/**
 * @typedef {object} Phaser.Types.Core.GameConfig
 * @since 3.0.0
 *
 * @property {(number|string)} [width=1024] - The width of the game, in game pixels.
 * @property {(number|string)} [height=768] - The height of the game, in game pixels.
 * @property {number} [zoom=1] - Simple scale applied to the game canvas. 2 is double size, 0.5 is half size, etc.
 * @property {number} [type=CONST.AUTO] - Which renderer to use. Phaser.AUTO, Phaser.CANVAS, Phaser.HEADLESS, or Phaser.WEBGL. AUTO picks WEBGL if available, otherwise CANVAS.
 * @property {(HTMLElement|string)} [parent=undefined] - The DOM element that will contain the game canvas, or its `id`. If undefined, or if the named element doesn't exist, the game canvas is appended to the document body. If `null` no parent will be used and you are responsible for adding the canvas to the dom.
 * @property {HTMLCanvasElement} [canvas=null] - Provide your own Canvas element for Phaser to use instead of creating one.
 * @property {string} [canvasStyle=null] - CSS styles to apply to the game canvas instead of Phasers default styles.
 * @property {boolean}[customEnvironment=false] - Is Phaser running under a custom (non-native web) environment? If so, set this to `true` to skip internal Feature detection. If `true` the `renderType` cannot be left as `AUTO`.
 * @property {CanvasRenderingContext2D} [context] - Provide your own Canvas Context for Phaser to use, instead of creating one.
 * @property {(Phaser.Scene|Phaser.Scene[]|Phaser.Types.Scenes.SettingsConfig|Phaser.Types.Scenes.SettingsConfig[]|Phaser.Types.Scenes.CreateSceneFromObjectConfig|Phaser.Types.Scenes.CreateSceneFromObjectConfig[]|function|function[])} [scene=null] - A scene or scenes to add to the game. If several are given, the first is started; the remainder are started only if they have `{ active: true }`. See the `sceneConfig` argument in `Phaser.Scenes.SceneManager#add`.
 * @property {string[]} [seed] - Seed for the random number generator.
 * @property {string} [title=''] - The title of the game. Shown in the browser console.
 * @property {string} [url='https://phaser.io'] - The URL of the game. Shown in the browser console.
 * @property {string} [version=''] - The version of the game. Shown in the browser console.
 * @property {boolean} [autoFocus=true] - Automatically call window.focus() when the game boots. Usually necessary to capture input events if the game is in a separate frame.
 * @property {(boolean|Phaser.Types.Core.InputConfig)} [input] - Input configuration, or `false` to disable all game input.
 * @property {boolean} [disableContextMenu=false] - Disable the browser's default 'contextmenu' event (usually triggered by a right-button mouse click).
 * @property {(boolean|Phaser.Types.Core.BannerConfig)} [banner=false] - Configuration for the banner printed in the browser console when the game starts.
 * @property {Phaser.Types.Core.DOMContainerConfig} [dom] - The DOM Container configuration object.
 * @property {Phaser.Types.Core.FPSConfig} [fps] - Game loop configuration.
 * @property {Phaser.Types.Core.RenderConfig} [render] - Game renderer configuration.
 * @property {Phaser.Types.Core.CallbacksConfig} [callbacks] - Optional callbacks to run before or after game boot.
 * @property {Phaser.Types.Core.LoaderConfig} [loader] - Loader configuration.
 * @property {Phaser.Types.Core.ImagesConfig} [images] - Images configuration.
 * @property {Phaser.Types.Core.PhysicsConfig} [physics] - Physics configuration.
 * @property {Phaser.Types.Core.PluginObject|Phaser.Types.Core.PluginObjectItem[]} [plugins] - Plugins to install.
 * @property {Phaser.Types.Core.ScaleConfig} [scale] - The Scale Manager configuration.
 * @property {Phaser.Types.Core.AudioConfig} [audio] - The Audio Configuration object.
 * @property {Phaser.Types.Core.PipelineConfig} [pipeline] - A WebGL Pipeline configuration object. Can also be part of the `RenderConfig`.
 * @property {(string|number)} [backgroundColor=0x000000] - The background color of the game canvas. The default is black.
 * @property {boolean} [antialias=true] - When set to `true`, WebGL uses linear interpolation to draw scaled or rotated textures, giving a smooth appearance. When set to `false`, WebGL uses nearest-neighbor interpolation, giving a crisper appearance. `false` also disables antialiasing of the game canvas itself, if the browser supports it, when the game canvas is scaled.
 * @property {boolean} [antialiasGL=true] - Sets the `antialias` property when the WebGL context is created. Setting this value does not impact any subsequent textures that are created, or the canvas style attributes.
 * @property {boolean} [desynchronized=false] - When set to `true` it will create a desynchronized context for both 2D and WebGL. See https://developers.google.com/web/updates/2019/05/desynchronized for details.
 * @property {boolean} [pixelArt=false] - Sets `antialias` to false and `roundPixels` to true. This is the best setting for pixel-art games.
 * @property {boolean} [roundPixels=false] - Draw texture-based Game Objects at only whole-integer positions. Game Objects without textures, like Graphics, ignore this property.
 * @property {boolean} [transparent=false] - Whether the game canvas will be transparent. Boolean that indicates if the canvas contains an alpha channel. If set to false, the browser now knows that the backdrop is always opaque, which can speed up drawing of transparent content and images.
 * @property {boolean} [clearBeforeRender=true] - Whether the game canvas will be cleared between each rendering frame.
 * @property {boolean} [preserveDrawingBuffer=false] - If the value is true the WebGL buffers will not be cleared and will preserve their values until cleared or overwritten by the author.
 * @property {boolean} [premultipliedAlpha=true] - In WebGL mode, the drawing buffer contains colors with pre-multiplied alpha.
 * @property {boolean} [failIfMajorPerformanceCaveat=false] - Let the browser abort creating a WebGL context if it judges performance would be unacceptable.
 * @property {string} [powerPreference='default'] - "high-performance", "low-power" or "default". A hint to the browser on how much device power the game might use.
 * @property {number} [batchSize=4096] - The default WebGL batch size. Represents the number of _quads_ that can be added to a single batch.
 * @property {number} [maxLights=10] - The maximum number of lights allowed to be visible within range of a single Camera in the LightManager.
 * @property {number} [maxTextures=-1] - When in WebGL mode, this sets the maximum number of GPU Textures to use. The default, -1, will use all available units. The WebGL1 spec says all browsers should provide a minimum of 8.
 * @property {string} [mipmapFilter='LINEAR'] - The mipmap magFilter to be used when creating WebGL textures.
 */
typedef GameConfig = {
    @:optional var width:Dynamic;
    @:optional var height:Dynamic;
    @:optional var zoom:Float;
    @:optional var type:Int;
    @:optional var parent:Dynamic;
    @:optional var canvas:js.html.CanvasElement;
    @:optional var canvasStyle:String;
    @:optional var customEnvironment:Bool;
    @:optional var context:js.html.CanvasRenderingContext2D;
    @:optional var scene:Dynamic;
    @:optional var seed:Array<String>;
    @:optional var title:String;
    @:optional var url:String;
    @:optional var version:String;
    @:optional var autoFocus:Bool;
    @:optional var input:Dynamic;
    @:optional var disableContextMenu:Bool;
    @:optional var banner:Dynamic;
    @:optional var dom:phaser.types.core.DOMContainerConfig;
    @:optional var fps:phaser.types.core.FPSConfig;
    @:optional var render:phaser.types.core.RenderConfig;
    @:optional var callbacks:phaser.types.core.CallbacksConfig;
    @:optional var loader:phaser.types.core.LoaderConfig;
    @:optional var images:phaser.types.core.ImagesConfig;
    @:optional var physics:phaser.types.core.PhysicsConfig;
    @:optional var plugins:Dynamic;
    @:optional var scale:phaser.types.core.ScaleConfig;
    @:optional var audio:phaser.types.core.AudioConfig;
    @:optional var pipeline:phaser.types.core.PipelineConfig;
    @:optional var backgroundColor:Dynamic;
    @:optional var antialias:Bool;
    @:optional var antialiasGL:Bool;
    @:optional var desynchronized:Bool;
    @:optional var pixelArt:Bool;
    @:optional var roundPixels:Bool;
    @:optional var transparent:Bool;
    @:optional var clearBeforeRender:Bool;
    @:optional var preserveDrawingBuffer:Bool;
    @:optional var premultipliedAlpha:Bool;
    @:optional var failIfMajorPerformanceCaveat:Bool;
    @:optional var powerPreference:String;
    @:optional var batchSize:Float;
    @:optional var maxLights:Float;
    @:optional var maxTextures:Float;
    @:optional var mipmapFilter:String;
};
