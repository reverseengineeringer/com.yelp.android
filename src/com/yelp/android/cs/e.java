package com.yelp.android.cs;

public class e
{
  private final int a;
  private final a b;
  private final d c;
  
  public e(int paramInt, a parama, d paramd)
  {
    a = paramInt;
    b = parama;
    c = paramd;
  }
  
  public e(a parama, d paramd)
  {
    this(0, parama, paramd);
  }
  
  public long a()
  {
    return b.a(a);
  }
  
  public e b()
  {
    return new e(a + 1, b, c);
  }
  
  public e c()
  {
    return new e(b, c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cs.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */