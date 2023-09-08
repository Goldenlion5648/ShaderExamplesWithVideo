shader_type canvas_item;

//uniform means will appear in inspector
uniform sampler2D texture2;

uniform vec2 scroll1 = vec2(0.1, 0.1);
uniform vec2 scroll2 = vec2(0.2, 0.45);

void fragment() {
	// Place fragment code here.
	vec2 extra = vec2(1.0);
	float textureColor1 = texture(TEXTURE, modf(UV + scroll1 * TIME, extra)).r;
	float textureColor2 = texture(TEXTURE, modf(UV + scroll2 * TIME, extra)).r;
	float result = textureColor1 * textureColor2;
	COLOR = vec4(result, result, result, 1);
}
