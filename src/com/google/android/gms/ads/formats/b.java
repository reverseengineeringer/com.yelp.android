package com.google.android.gms.ads.formats;

public final class b
{
  private final boolean a;
  private final int b;
  private final boolean c;
  
  private b(a parama)
  {
    a = a.a(parama);
    b = a.b(parama);
    c = a.c(parama);
  }
  
  public boolean a()
  {
    return a;
  }
  
  public int b()
  {
    return b;
  }
  
  public boolean c()
  {
    return c;
  }
  
  public static final class a
  {
    private boolean a = false;
    private int b = 0;
    private boolean c = false;
    
    public a a(int paramInt)
    {
      b = paramInt;
      return this;
    }
    
    public a a(boolean paramBoolean)
    {
      a = paramBoolean;
      return this;
    }
    
    public b a()
    {
      return new b(this, null);
    }
    
    public a b(boolean paramBoolean)
    {
      c = paramBoolean;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.formats.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */