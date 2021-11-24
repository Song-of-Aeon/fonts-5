//
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

