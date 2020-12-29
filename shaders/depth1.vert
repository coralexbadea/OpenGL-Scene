#version 410 core
layout(location=0) in vec3 vPosition;
uniform mat4 lightSpaceTrMatrix1;
uniform mat4 model;
void main()
{
    gl_Position = lightSpaceTrMatrix1 * model * vec4(vPosition, 1.0f);
}