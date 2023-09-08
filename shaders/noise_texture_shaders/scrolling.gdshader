shader_type canvas_item;

void fragment() {
	// Place fragment code here.
	vec2 extra = vec2(1.0);
	vec4 textureColor = texture(TEXTURE, modf(UV + vec2(.1, .1) * TIME, extra));
	COLOR = textureColor;
}
