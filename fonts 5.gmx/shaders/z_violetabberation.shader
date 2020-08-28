//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float intensity;
void main()
{
    /*vec4 ogcolour = texture2D(gm_BaseTexture, v_vTexcoord);
    float red = ogcolour.r;
    float blue = ogcolour.b;
    float alpha = 1.0;
    vec4 purple = vec4(red, 0.0, blue, alpha);
    gl_FragColor = purple;*/
    float red = texture2D(gm_BaseTexture,v_vTexcoord+vec2(intensity,0.0)).r;
    float green = 0.0;
    float blue = texture2D(gm_BaseTexture,v_vTexcoord+vec2(-intensity,0.0)).b;
    gl_FragColor = vec4(red,green,blue,texture2D(gm_BaseTexture,v_vTexcoord).a);
}

