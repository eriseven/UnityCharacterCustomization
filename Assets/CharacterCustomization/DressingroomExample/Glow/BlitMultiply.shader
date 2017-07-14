Shader "Hidden/BlitMultiply"
{
	SubShader
	{
		Pass
		{
			Blend DstColor Zero
			ZTest Always Cull Off ZWrite Off Fog { Mode Off }
			SetTexture[__RenderTex] { combine texture }
		} 
	}

	Fallback Off
}
