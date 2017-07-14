Shader "Hidden/GlowCompose"
{
	Properties {
		_Color ("Glow Amount", Color) = (1,1,1,1)
		_MainTex ("", RECT) = "white" {}
	}
	SubShader {
		Pass {
			ZTest Always Cull Off ZWrite Off Fog { Mode Off }
			Blend One One
			SetTexture [_MainTex] {constantColor [_Color] combine constant * texture DOUBLE}
		}
	}
	Fallback off
}
