
#ifdef MAPFLOAT
uniform float material_opacity;
#endif
#ifdef MAPTEXTURE
uniform sampler2D texture_opacityMap;
#endif
void getOpacity() {
    dAlpha = 1.0;
    /*
    #ifdef MAPFLOAT
    dAlpha *= material_opacity;
    #endif
    #ifdef MAPTEXTURE
    dAlpha *= texture2DBias(texture_opacityMap, $UV, textureBias).$CH;
    #endif
    #ifdef MAPVERTEX
    dAlpha *= clamp(vVertexColor.$VC, 0.0, 1.0);
    #endif
    */

    #ifdef MAPFLOAT
    dAlpha *= material_opacity;//HexDist($UV);*0.5
    #endif
}
