package phaser.types.scenes;

/**
 * @typedef {object} Phaser.Types.Scenes.CreateSceneFromObjectConfig
 * @since 3.17.0
 *
 * @property {Phaser.Types.Scenes.SceneInitCallback} [init] - The scene's init callback.
 * @property {Phaser.Types.Scenes.ScenePreloadCallback} [preload] - The scene's preload callback.
 * @property {Phaser.Types.Scenes.SceneCreateCallback} [create] - The scene's create callback.
 * @property {Phaser.Types.Scenes.SceneUpdateCallback} [update] - The scene's update callback. See {@link Phaser.Scene#update}.
 * @property {any} [extend] - Any additional properties, which will be copied to the Scene after it's created (except `data` or `sys`).
 * @property {any} [extend.data] - Any values, which will be merged into the Scene's Data Manager store.
 */
typedef CreateSceneFromObjectConfig = {
    @:optional var init:phaser.types.scenes.SceneInitCallback;
    @:optional var preload:phaser.types.scenes.ScenePreloadCallback;
    @:optional var create:phaser.types.scenes.SceneCreateCallback;
    @:optional var update:phaser.types.scenes.SceneUpdateCallback;
    @:optional var extend:Dynamic;
};
