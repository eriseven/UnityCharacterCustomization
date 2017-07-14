Shader "Hidden/GlowConeTap"
{
	Properties {
		_Color ("Blur Boost", Color) = (0,0,0,0.25)
		_MainTex ("", RECT) = "white" {}
	}
	SubShader {
		Pass {
			ZTest Always Cull Off ZWrite Off Fog { Mode Off }
			SetTexture [_MainTex] {constantColor [_Color] combine texture * constant alpha}
			SetTexture [_MainTex] {constantColor [_Color] combine texture * constant + previous}
			SetTexture [_MainTex] {constantColor [_Color] combine texture * constant + previous}
			SetTexture [_MainTex] {constantColor [_Color] combine texture * constant + previous}
		}
	}
	Fallback off
}
