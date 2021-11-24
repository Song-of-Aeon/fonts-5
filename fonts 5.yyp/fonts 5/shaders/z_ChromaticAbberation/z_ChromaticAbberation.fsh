//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float intensity;
void main()
{
    float red = texture2D(gm_BaseTexture,v_vTexcoord+vec2(intensity,0.0)).r;
    float green = texture2D(gm_BaseTexture,v_vTexcoord+vec2(-intensity,intensity)).g;
    float blue = texture2D(gm_BaseTexture,v_vTexcoord+vec2(-intensity,0.0)).b;
    gl_FragColor = vec4(red,green,blue,texture2D(gm_BaseTexture,v_vTexcoord).a);
}

