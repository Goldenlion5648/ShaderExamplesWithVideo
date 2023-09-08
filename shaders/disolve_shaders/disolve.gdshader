shader_type canvas_item;
uniform sampler2D dissolveNoise;
void fragment() {
	COLOR = texture(TEXTURE, UV);
	float noise = texture(dissolveNoise, UV).r;
	float showing_threshold = 0.3;
	COLOR.a *= step(sin(TIME) * (UV.x + .5), noise - showing_threshold);
}
