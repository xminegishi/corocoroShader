import QtQuick 2.4

Effect {
    id: effectSepia

    fragmentShader: "
            uniform sampler2D source;
            uniform lowp float qt_Opacity;
            varying vec2 qt_TexCoord0;

            void main()
            {
                vec2 uv = qt_TexCoord0.xy;
                vec4 orig = texture2D(source, uv);
                vec3 col = orig.rgb;
                float y = 0.3 * col.r + 0.59 * col.g + 0.11 * col.b;
                gl_FragColor = qt_Opacity * vec4(y + 0.15, y + 0.07, y - 0.12, 1.0);
            }"
}
