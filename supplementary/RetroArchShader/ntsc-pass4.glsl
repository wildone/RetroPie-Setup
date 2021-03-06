// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)
varying     vec2 VARone;
varying     vec2 VARpix_no;
varying     vec2 VARtex;


struct data {
    vec2 VARtex;
    vec2 VARpix_no;
    vec2 VARone;
};

struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
};

vec4 _oPosition1;
data _oData1;
uniform mat4 MVPMatrix;
input_dummy _IN1;
vec4 _r0003;
attribute vec4 VertexCoord;
attribute vec4 TexCoord;

 

         mat4 transpose_(mat4 matrix)
         {
            mat4 ret;
            for (int i = 0; i != 4; i++)
               for (int j = 0; j != 4; j++)
                  ret[i][j] = matrix[j][i];

            return ret;
         }
         
uniform int FrameDirection;
uniform int FrameCount;
#ifdef GL_ES
uniform mediump vec2 OutputSize;
uniform mediump vec2 TextureSize;
uniform mediump vec2 InputSize;
#else
uniform vec2 OutputSize;
uniform vec2 TextureSize;
uniform vec2 InputSize;
#endif
void main()
{
    mat4 MVPMatrix_ = transpose_(MVPMatrix);


    _r0003.x = dot(MVPMatrix_[0], VertexCoord);
    _r0003.y = dot(MVPMatrix_[1], VertexCoord);
    _r0003.z = dot(MVPMatrix_[2], VertexCoord);
    _r0003.w = dot(MVPMatrix_[3], VertexCoord);
    _oPosition1 = _r0003;
    VARtex = TexCoord.xy;
    VARpix_no = TexCoord.xy*TextureSize;
    VARone = 1.00000000E+000/TextureSize;
    gl_Position = _r0003;
} 
#elif defined(FRAGMENT)
#ifdef GL_ES
precision mediump float;
#endif
varying     vec2 VARone;
varying     vec2 VARpix_no;
varying     vec2 VARtex;


struct data {
    vec2 VARtex;
    vec2 VARpix_no;
    vec2 VARone;
};

struct input_dummy {
    vec2 _video_size;
    vec2 VARtexture_size;
    vec2 _output_dummy_size;
    float _frame_count;
};

vec4 _ret_0;
vec3 _TMP11;
float _TMP14;
float _TMP13;
float _TMP12;
float _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
data _vertex1;
uniform sampler2D Texture;
vec2 _c0020;
vec2 _c0030;
vec2 _c0050;
vec2 _c0060;
float _TMP71;
float _x0072;
float _TMP75;
float _x0076;
float _TMP79;
float _x0080;
float _TMP83;
float _x0084;
float _TMP87;
float _x0088;
vec3 _a0092;

 
uniform int FrameDirection;
uniform int FrameCount;
#ifdef GL_ES
uniform mediump vec2 OutputSize;
uniform mediump vec2 TextureSize;
uniform mediump vec2 InputSize;
#else
uniform vec2 OutputSize;
uniform vec2 TextureSize;
uniform vec2 InputSize;
#endif
void main()
{

    vec3 _frame0;
    vec3 _frame1;
    vec3 _frame2;
    vec3 _frame3;
    vec3 _frame4;
    float _offset_dist;
    float _dist0;
    float _dist1;
    float _dist3;
    float _dist4;
    vec3 _scanline;

    _c0020 = VARtex + vec2(0.00000000E+000, -2.00000000E+000*VARone.y);
    _TMP0 = texture2D(Texture, _c0020);
    _TMP12 = pow(_TMP0.x, 2.50000000E+000);
    _TMP13 = pow(_TMP0.y, 2.50000000E+000);
    _TMP14 = pow(_TMP0.z, 2.50000000E+000);
    _frame0 = vec3(_TMP12, _TMP13, _TMP14);
    _c0030 = VARtex + vec2(0.00000000E+000, -VARone.y);
    _TMP1 = texture2D(Texture, _c0030);
    _TMP12 = pow(_TMP1.x, 2.50000000E+000);
    _TMP13 = pow(_TMP1.y, 2.50000000E+000);
    _TMP14 = pow(_TMP1.z, 2.50000000E+000);
    _frame1 = vec3(_TMP12, _TMP13, _TMP14);
    _TMP2 = texture2D(Texture, VARtex);
    _TMP12 = pow(_TMP2.x, 2.50000000E+000);
    _TMP13 = pow(_TMP2.y, 2.50000000E+000);
    _TMP14 = pow(_TMP2.z, 2.50000000E+000);
    _frame2 = vec3(_TMP12, _TMP13, _TMP14);
    _c0050 = VARtex + vec2(0.00000000E+000, VARone.y);
    _TMP3 = texture2D(Texture, _c0050);
    _TMP12 = pow(_TMP3.x, 2.50000000E+000);
    _TMP13 = pow(_TMP3.y, 2.50000000E+000);
    _TMP14 = pow(_TMP3.z, 2.50000000E+000);
    _frame3 = vec3(_TMP12, _TMP13, _TMP14);
    _c0060 = VARtex + vec2(0.00000000E+000, 2.00000000E+000*VARone.y);
    _TMP4 = texture2D(Texture, _c0060);
    _TMP12 = pow(_TMP4.x, 2.50000000E+000);
    _TMP13 = pow(_TMP4.y, 2.50000000E+000);
    _TMP14 = pow(_TMP4.z, 2.50000000E+000);
    _frame4 = vec3(_TMP12, _TMP13, _TMP14);
    _TMP5 = fract(VARpix_no.y);
    _offset_dist = _TMP5 - 5.00000000E-001;
    _dist0 = 2.00000000E+000 + _offset_dist;
    _dist1 = 1.00000000E+000 + _offset_dist;
    _dist3 = -1.00000000E+000 + _offset_dist;
    _dist4 = -2.00000000E+000 + _offset_dist;
    _x0072 = -5.00000000E+000*_dist0*_dist0;
    _TMP71 = pow(2.71828198E+000, _x0072);
    _scanline = _frame0*_TMP71;
    _x0076 = -5.00000000E+000*_dist1*_dist1;
    _TMP75 = pow(2.71828198E+000, _x0076);
    _scanline = _scanline + _frame1*_TMP75;
    _x0080 = -5.00000000E+000*_offset_dist*_offset_dist;
    _TMP79 = pow(2.71828198E+000, _x0080);
    _scanline = _scanline + _frame2*_TMP79;
    _x0084 = -5.00000000E+000*_dist3*_dist3;
    _TMP83 = pow(2.71828198E+000, _x0084);
    _scanline = _scanline + _frame3*_TMP83;
    _x0088 = -5.00000000E+000*_dist4*_dist4;
    _TMP87 = pow(2.71828198E+000, _x0088);
    _scanline = _scanline + _frame4*_TMP87;
    _a0092 = 1.14999998E+000*_scanline;
    _TMP12 = pow(_a0092.x, 4.76190507E-001);
    _TMP13 = pow(_a0092.y, 4.76190507E-001);
    _TMP14 = pow(_a0092.z, 4.76190507E-001);
    _TMP11 = vec3(_TMP12, _TMP13, _TMP14);
    _ret_0 = vec4(_TMP11.x, _TMP11.y, _TMP11.z, 1.00000000E+000);
    gl_FragColor = _ret_0;
    return;
} 
#endif
