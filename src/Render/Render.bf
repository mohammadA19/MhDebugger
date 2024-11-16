
using System;
namespace MhDebugger.Render;

public enum R_GeoVertexFlags : uint32
{
	TexCoord = (1<<0),
	Normals  = (1<<1),
	RGB      = (1<<2),
	RGBA     = (1<<3),
}

[Union]
public struct R_Handle
{
	public uint64[1] u64;
	public uint32[2] u32;
	public uint16[4] u16;
}

// ---------- Instance Types

public struct R_Rect2DInst
{
	public Range2F32 Dst, Src;
	public Vec4F32[Enum.GetCount<Corner>()] Colors;
	public float[Enum.GetCount<Corner>()] CornerRadii;
	public float BorderThickness;
	public float EdgeSoftness;
	public float WhiteTextureOverride;
	public float[1] _Unused;
}

public struct R_Mesh3DInst
{
	public Mat4x4<float> XForm;
}

// ---------- Batch Types

public struct R_Batch
{
	public uint8* v;
	public uint64 ByteCount;
	public uint64 ByteCap;
}

public struct R_BatchNode : Node<R_Batch>;

public struct R_BatchList : List<R_Batch>
{
	public uint64 ByteCount, BytesPerInst;
}

public struct R_BatchGroup2DParams
{
	public R_Handle Tex;
	public R_Tex2DSampleKind TexSampleKind;
	public Mat3x3<float> XForm;
	public Range2<float> Clip;
	public float Transparency;
}

public struct R_BatchGroup2DNode
{
	public Self* Next;
	public R_BatchList Batches;
	public R_BatchGroup2DParams Params;
}

public struct R_BatchGroup2DList : List<R_BatchGroup2DNode>;

public struct R_BatchGroup3DParams
{
	public R_Handle MeshVertices, MeshIndices;
	public R_GeoVertexKind MeshGeoTopology;
	public R_GeoVertexFlags MeshGeoVertexFlags;
	public R_Handle AlbedoTex;
	public R_Tex2DSampleKind AlbedoTexSampleKind;
	public Mat4x4<float> XForm;
}

