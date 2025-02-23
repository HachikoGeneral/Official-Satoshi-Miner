uniform float iGlobalTime;

float HexDist(vec2 p){
    float t = 3.1415 / 6.0; //0.53;
    //mat2 rot = mat2(cos(t-id.x/FACTOR), -sin(t), sin(t), cos(t-id.x/FACTOR));
    mat2 rot = mat2(cos(t), -sin(t), sin(t), cos(t));
    //mat2 rot = mat2(cos(t-id.x), -sin(t), sin(t), cos(t-id.x));
    p*=rot*1.3;
    p = abs(p); // Copy over first quad into all
    float c = dot(p, normalize(vec2(1,1.73)));// Dot to get correct angle
    return max(c, p.x); // Find where the vert line and angled intersect
}

void getEmission() {
    //vec2 p = -1.0 + 2.0 * vUv0;
    //dEmission += HexDist(p);
    dEmission = vec3(0.0, 0.0, 0.0);
    
    // main code, *original shader by: 'Plasma' by Viktor Korsun (2011)
    /*
    float x = p.x;
    float y = p.y;
    float mov0 = x+y+cos(sin(iGlobalTime)*2.0)*100.+sin(x/100.)*1000.;
    float mov1 = y / 0.9 +  iGlobalTime;
    float mov2 = x / 0.2;
    float c1 = abs(sin(mov1+iGlobalTime)/2.+mov2/2.-mov1-mov2+iGlobalTime);
    float c2 = abs(sin(c1+sin(mov0/1000.+iGlobalTime)+sin(y/40.+iGlobalTime)+sin((x+y)/100.)*3.));
    float c3 = abs(sin(c2+cos(mov1+mov2+c2)+cos(mov2)+sin(x/1000.)));
    dEmission = vec3(c1, c2, c3);
    */
}

