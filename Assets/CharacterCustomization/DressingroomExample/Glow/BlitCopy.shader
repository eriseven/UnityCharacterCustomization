Shader "Hidden/BlitCopy"
{
	SubShader
	{ 
		Pass
		{
			ZTest Always Cull Off ZWrite Off Fog { Mode Off }
			SetTexture [__RenderTex] { combine texture}
		}
	}
	Fallback Off 
}
