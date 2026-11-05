
#version 330 core
layout (location = 0) in vec3 position;
layout(location = 1) in vec2 vertexUV;

// Output data ; will be interpolated for each fragment.
out vec2 UV;


uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    // TODO: Your code here
    //Calculate final position of vertex in clip space
    gl_Position = projection * view * model * vec4(position, 1.0);

    //Pass texture coordinates to fragment shader
    UV = vertexUV;
    // Remember to set gl_Position (correctly) or you will get a black screen...
}
