#version 330 core



in vec3 pos;
in vec2 uv;
in vec3 normal;

out vec4 FragColor;



vec4 color;

vec4 red =   vec4(1.0f, 0.0f, 0.0f, 1.0f);
vec4 green =  vec4(0.0f, 1.0f, 0.0f, 1.0f);
vec4 blue = vec4(0.0f, 0.0f, 1.0f, 1.0f);
vec4 white = vec4(1.0f, 1.0f, 1.0f, 1.0f);



int whichShaderImUsing = 0;

//int counter = int(uv.x * 100);
//bool temp;




float strength = .1;
float offset = (uv.x + uv.y) * strength;
float tempInput = uv.x - offset;

int intUVx = int(uv.x * 100);
int intUVy = int(uv.y * 100);





void main()
{
    //UV Shader
    if(whichShaderImUsing == 0){
        FragColor = vec4(((pos.x + 1) / 2), ((pos.y + 1) / 2), 0.0f, 1.0f);
    }


    //Gradient Shader
    if(whichShaderImUsing == 1){
        FragColor = vec4(tempInput, tempInput, tempInput, 1.0f);
    }


    //Seperated Shader
    if(whichShaderImUsing == 2){

        if(intUVx % 2 == 0){
            FragColor = red;

        }
        else if(intUVy % 2 == 0){
            FragColor = red;

        }
        else{
            FragColor = white;

        }

    }
    // Inverse Seperated Shader
    if(whichShaderImUsing == 3){

        if(intUVx % 2 == 0){
            FragColor = white;

        }
        else if(intUVy % 2 == 0){
            FragColor = white;

        }
        else{
            FragColor = red;

        }

    }


    //Solid Color Shader
    if(whichShaderImUsing == 4){
        color = blue;
        FragColor = color;
    }


    if(whichShaderImUsing == 6){

        if(uv.y > uv.x || uv.y < uv.x){
            FragColor = white;

        }

        if (uv.y == uv.x || uv.y  == uv.x + 5){
            FragColor = green;
        }


    }

    if(whichShaderImUsing == 7){

        if(uv.y > uv.x){
            FragColor = white;

        }

        else{
            FragColor = green;
        }


    }


//    //Switch every pixel in a sequence shader
//    if(whichShaderImUsing == 5){
//        if(counter == 0 ){
//            color = red;
//            FragColor = color;
//            
//        }
//        else if(counter == 1 ){
//            color = green;
//            FragColor = color;
//            
//        }
//        else if (counter % 2){
//            color = blue;
//            FragColor = color;
//            
//        }
//        else if (counter % 3){
//            color = red;
//            FragColor = color;
//            
//        }
//
//
//
//    }








}




