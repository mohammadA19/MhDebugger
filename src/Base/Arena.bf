
using System;
namespace MhDebugger;

public enum ArenaFlags
{
	NoChain    = (1<<0),
	LargePages = (1<<1),
}

public class Arena
{
	public Arena Prev, Current;
	public ArenaFlags Flags;
	public uint64 CmtSize, ResSize, BasePos;
	public uint64 Pos, Cmt, Res;
#if ARENA_FREE_LIST
	public uint64 FreeSize;
	public Arena* FreeLast;
#endif

	public const int ARENA_HEADER_SIZE = 128;
	public static uint64 DefaultReserveSize = MB!(64);
	public static uint64 DefaultCommitSize = KB!(64);
	public static ArenaFlags DefaultFlags = 0;

	/*static void CheckSize()
	{
		Compiler.Assert(sizeof(Arena) <= ARENA_HEADER_SIZE);
	}*/

	public static Arena Alloc(
		uint64 reserveSize = DefaultReserveSize,
		uint64 commitSize  = DefaultCommitSize,
		ArenaFlags flags   = DefaultFlags,
		void* optionalBackingBuffer = null)
	{

	}

	~this()
	{

	}

	public void* Push(uint64 size, uint64 align)
	{

	}

	public uint64 Pos()
	{

	}

	public void PopTo(uint64 pos)
	{

	}

	public void Clear()
	{

	}

	public void Pop(uint64 amount)
	{

	}

	static uint64 GetDefaultAlign<T>()
	{
		return Math.Max(8, (uint64)alignof(T));
	}

	public T* PushArray<T>(
		uint64 count,
		uint64 align = GetDefaultAlign<T>(),
		bool zero = true)
	{

	}
}

public struct Temp : IDisposable
{
	public Arena Arena;
	public uint64 Pos;

	public this(Arena arena)
	{
		Arena = arena;
		Pos = arena.Pos;
	}

	public void Dispose()
	{
		Arena.PopTo(Pos);
	}
}

