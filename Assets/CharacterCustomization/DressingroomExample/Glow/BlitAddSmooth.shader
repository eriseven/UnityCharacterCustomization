Shader "Hidden/BlitAddSmooth"
{
	SubShader
	{ 
		Pass
		{
			Blend OneMinusDstColor One
			ZTest Always Cull Off ZWrite Off Fog { Mode Off }
			SetTexture[__RenderTex] { combine texture }
		}
	}
	Fallback Off
}
