Shader "Hidden/BlitBlend"
{
	SubShader
	{
		Pass
		{
			Blend SrcAlpha OneMinusSrcAlpha
			ZTest Always Cull Off ZWrite Off Fog { Mode Off }
			SetTexture[__RenderTex] { combine texture }
		}
	}
	Fallback Off
}
