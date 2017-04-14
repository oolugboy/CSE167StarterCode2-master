#version 410 core

uniform mat4 projection = mat4(1);
uniform mat4 modelview = mat4(1);

layout(location = 0) in vec3 position;
layout(location = 1) in vec3 normal;
layout(location = 5) in mat4 InstanceTransform;

out vec3 vertNormal;

void main(void) {
   vertNormal = Normal;
   gl_Position = projection * modelview * vec4(position, 1.0f);
}