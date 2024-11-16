
using System;
namespace MhDebugger;

public struct Node<T>
{
	public Self* Next;
	public T Value;
}

public struct List<T>
{
	public Node<T>* First;
	public Node<T>* Last;
	public uint64 NodeCount;
	public uint64 TotalSize;
}

public struct Array<T>
{
	public T* v;
	public uint64 Count;
}