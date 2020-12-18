#version 410 core
in vec4 fragPosLightSpace;
out vec4 fColor;


vec3 ambient ;
float ambientStrength = 0.2f;
vec3 diffuse ;
vec3 specular ;
float specularStrength = 0.5f;
float shininess = 32.0f;
uniform sampler2D diffuseTexture;

uniform	vec3 lightColor;
uniform sampler2D shadowMap;
float computeShadow(){

vec3 normalizedCoords = fragPosLightSpace.xyz / fragPosLightSpace.w;
normalizedCoords = normalizedCoords * 0.5 + 0.5;
float closestDepth = texture(shadowMap, normalizedCoords.xy).r;
float currentDepth = normalizedCoords.z;
float shadow = currentDepth > closestDepth  ? 1.0 : 0.0;
return shadow;
}
void main() 
{
  
  
}

