varying vec2 vUv;

// Purple and blue gradient colors
const vec3 purple = vec3(0.5, 0.0, 0.5);
const vec3 blue = vec3(0.0, 0.0, 1.0);

// Calculate the gradient value
float gradient(float x) {
    return pow(abs(x - 0.5), 2.0);
}

// Calculate the final color
vec3 color(vec2 uv) {
    // Get the gradient value at the current UV coordinate
    float gradientValue = gradient(uv.x);

    // Calculate the final color based on the gradient value
    vec3 color = mix(purple, blue, gradientValue);

    return color;
}

void main() {
    // Calculate the final color for the fragment
    vec3 color = color(vUv);

    // Set the fragment color
    gl_FragColor = vec4(color, 1.0);
}
