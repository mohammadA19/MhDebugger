
using System;
namespace MhDebugger;

public struct Vec2<T>
{
	public T[2] v;

	public T X
	{
		get => v[0];
		set mut => v[0] = value;
	}

	public T Y
	{
		get => v[1];
		set mut => v[1] = value;
	}
}

public struct Range1<T>
{
	public T[2] v;

	public T Min
	{
		get => v[0];
		set mut => v[0] = value;
	}

	public T Max
	{
		get => v[1];
		set mut => v[1] = value;
	}
}



public struct Range1U64 : Range1<uint64>;

public struct Range2F32 : Range2<float>;

public struct Vec4F32 : Vec4<float>;
