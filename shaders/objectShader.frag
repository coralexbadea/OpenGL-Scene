#version 410 core
flat in vec3 flatColor;
in vec3 Color;
in vec2 passTexture;
in vec4 fPosEye;
out vec4 fColor;
float computeFog(){
    
    float fogDensity = 0.01f;
    float fragmentDistance = length(fPosEye);
    float fogFactor = exp(-pow(fragmentDistance * fogDensity, 2));
    return clamp(fogFactor, 0.0f, 1.0f);
    }
    
void main() {
    
    vec4 FragColor = vec4(Color, 1.0);
    float fogFactor = computeFog();
    vec4 fogColor = vec4(0.5f, 0.5f, 0.5f, 1.0f);
    fColor = mix(fogColor, FragColor, fogFactor);

}
