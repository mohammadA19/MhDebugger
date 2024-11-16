
using System;
namespace MhDebugger.Base;

public struct String8
{
	public uint8* Str;
	public uint64 Size;
}

public struct String16
{
	public uint16* Str;
	public uint64 Size;
}

public struct String32
{
	public uint32* Str;
	public uint64 Size;
}

// ----------

public struct String8Node : Node<String8>;

public struct String8MetaNode : Node<String8Node>;

public struct String8List : List<String8>;

public struct String8Array : Array<String8>;

// ----------

public enum StringMatchFlags : uint32
{
	CaseInsensitive = (1 << 0),
	RightSideSloppy = (1 << 1),
	SlashInsensitive = (1 << 2),
}

public enum StringSplitFlags : uint32
{
	KeepEmpties = (1 << 0),
}

public enum PathStyle
{
	Null,
	Relative,
	WindowsAbsolute,
	UnixAbsolute,


}

public struct StringJoin
{
	public String8 Pre, Sep, Post;
}

public struct String8TextPtPair
{
	public String8 Str;
	public TextPt  Pt;
}

public struct UnicodeDecode
{
	public uint32 Inc, Codepoint;
}

public struct FuzzyMatchRangeNode : Node<Range1U64>;

public struct FuzzyMatchRangeList : List<Range1U64>
{
	public uint64 NeedlePartCount;
}

