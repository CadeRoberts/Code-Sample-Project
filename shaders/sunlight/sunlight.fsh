//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	//get original color of pixel
	
	vec4  OC =  texture2D( gm_BaseTexture, v_vTexcoord );
	
	float Average = (OC.r + OC.g + OC.b)/3.0;
	float Alpha = 1.0;
	
	
	//create the color
	vec4  Color = vec4(Average, Average, Average, Alpha);
   
   //output the new color
   gl_FragColor = Color;
}
