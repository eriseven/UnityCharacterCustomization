Shader "Hidden/BlitAdd"
{
	SubShader
	{
		Pass
		{
			Blend One One
			ZTest Always Cull Off ZWrite Off Fog { Mode Off }
			SetTexture[__RenderTex] { combine texture }
		}
	}
	Fallback Off
}

