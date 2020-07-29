/* "hello world" shader for glsl. Outputs a constant color */

// preprocessor macro.
// conditionally sets floating point precision to medium when it encounters GL_ES, which usually means mobile devices and browsers
#ifdef GL_ES
precision mediump float;
#endif

// uniforms are how the cpu talks to the many gpu threads. names vary by implementation.
uniform float u_time;

// here is the main loop, just like in processing
void main () {
    //gl_FragColor is a built-in variable. The vec4 is RGBA values
    // NOTE: casting is not gauranteed, get in the habit of writing out floats 
    gl_FragColor = vec4 ( 1.0 , 0.0 , 1.0 , 1.0);
}