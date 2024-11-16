
using System;
namespace MhDebugger;

static
{
	public static mixin KB(var n)
	{
		n * 1024
	}

	public static mixin MB(var n)
	{
		n * 1024 * 1024
	}

	public static mixin GB(var n)
	{
		n * 1024 * 1024 * 1024
	}
}

public struct TextPt
{
	public int64 Line, Column;
}

public struct TextRng
{
	public TextPt Min, Max;
}
