#version 410 core

in vec3 fNormal;
in vec4 fPosEye;
in vec2 fTexCoords;
in vec4 fragPosLightSpace;
in vec4 fragPosLightSpace1;
out vec4 fColor;

//lighting
uniform	vec3 lightDir;
uniform	vec3 lightColor;

uniform	vec3 lightDir1;
uniform	vec3 lightColor1;
//texture
uniform sampler2D diffuseTexture;
uniform sampler2D specularTexture;
uniform sampler2D shadowMap;
uniform sampler2D shadowMap1;
vec3 ambient;
float ambientStrength = 0.2f;
vec3 diffuse;
vec3 specular;
float specularStrength = 0.5f;
float shininess = 32.0f;
vec4 color4 ;


void computeLightComponents(vec4 fragPosLightSpace, vec3 lightColor)
{		
	vec3 cameraPosEye = vec3(0.0f);//in eye coordinates, the viewer is situated at the origin
	
	//transform normal
	vec3 normalEye = normalize(fNormal);	
	
	//compute light direction
	vec3 lightDirN = normalize(fragPosLightSpace.xyz - fPosEye.xyz);
	
	//compute view direction 
	vec3 viewDirN = normalize(cameraPosEye - fPosEye.xyz);
		
	//compute ambient light
	ambient = ambientStrength * lightColor;
	
	//compute diffuse light
	diffuse = max(dot(normalEye, lightDirN), 0.0f) * lightColor;
	
	//compute specular light
	vec3 reflection = reflect(-lightDirN, normalEye);
	float specCoeff = pow(max(dot(viewDirN, reflection), 0.0f), shininess);
	specular = specularStrength * specCoeff * lightColor;
}
float computeShadow(vec4 fragPosLightSpace, sampler2D shadowMap){
	float shadow;
	vec3 normalizedCoords = fragPosLightSpace.xyz / fragPosLightSpace.w;
	if (normalizedCoords.z > 1.0f)
		return 0.0f;

	normalizedCoords = normalizedCoords * 0.5 + 0.5;


	float closestDepth = texture(shadowMap, normalizedCoords.xy).r;
	float currentDepth = normalizedCoords.z;
	float bias = 0.005f;
	
	if ((currentDepth - bias) > closestDepth) 
		shadow = 1.0f ;
	else 
		shadow = 0.0f;
	return shadow;
}



float computeFog(){
    
    float fogDensity = 0.05f;
    float fragmentDistance = length(fPosEye);
    float fogFactor = exp(-pow(fragmentDistance * fogDensity, 2));
    return clamp(fogFactor, 0.0f, 1.0f);
    }
    
    
void main() 
{
	computeLightComponents(fragPosLightSpace, lightColor);
	
	vec3 baseColor = vec3(0.9f, 0.35f, 0.0f);//orange
	
	ambient *= texture(diffuseTexture, fTexCoords).rgb;
	diffuse *= texture(diffuseTexture, fTexCoords).rgb;
	specular *= texture(specularTexture, fTexCoords).rgb;
	float shadow = computeShadow(fragPosLightSpace, shadowMap);
	vec3 color = min((ambient + (1.0f -shadow)*diffuse) + (1.0f -shadow)*specular, 1.0f);
    
	computeLightComponents(fragPosLightSpace1, lightColor1);
	
	 baseColor = vec3(0.9f, 0.35f, 0.0f);//orange
	
	ambient *= texture(diffuseTexture, fTexCoords).rgb;
	diffuse *= texture(diffuseTexture, fTexCoords).rgb;
	specular *= texture(specularTexture, fTexCoords).rgb;
	 shadow = computeShadow(fragPosLightSpace1, shadowMap1);
	color += min((ambient + (1.0f -shadow)*diffuse) + (1.0f -shadow)*specular, 1.0f);
    


    color4 = vec4(color, 1.0f);
    float fogFactor = computeFog();
    vec4 fogColor = vec4(0.5f, 0.5f, 0.5f, 1.0f);
    fColor = mix(fogColor, color4, fogFactor);
}
