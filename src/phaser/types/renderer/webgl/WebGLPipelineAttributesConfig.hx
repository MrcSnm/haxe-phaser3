package phaser.types.renderer.webgl;

/**
 * @typedef {object} Phaser.Types.Renderer.WebGL.WebGLPipelineAttributesConfig
 * @since 3.50.0
 *
 * @property {string} name - The name of the attribute as defined in the vertex shader.
 * @property {number} size - The number of components in the attribute, i.e. 1 for a float, 2 for a vec2, 3 for a vec3, etc.
 * @property {Phaser.Types.Renderer.WebGL.WebGLConst} type - The data type of the attribute, one of the `WEBGL_CONST` values, i.e. `WEBGL_CONST.FLOAT`, `WEBGL_CONST.UNSIGNED_BYTE`, etc.
 * @property {boolean} [normalized=false] - Should the attribute data be normalized?
 */
typedef WebGLPipelineAttributesConfig = {
var name:String;
var size:Float;
var type:phaser.types.renderer.webgl.WebGLConst;
    @:optional var normalized:Bool;
};
