package com.google.ads;

import com.google.android.gms.ads.d;

@Deprecated
public final class AdSize
{
  public static final AdSize a = new AdSize(-1, -2, "mb");
  public static final AdSize b = new AdSize(320, 50, "mb");
  public static final AdSize c = new AdSize(300, 250, "as");
  public static final AdSize d = new AdSize(468, 60, "as");
  public static final AdSize e = new AdSize(728, 90, "as");
  public static final AdSize f = new AdSize(160, 600, "as");
  private final d g;
  
  private AdSize(int paramInt1, int paramInt2, String paramString)
  {
    this(new d(paramInt1, paramInt2));
  }
  
  public AdSize(d paramd)
  {
    g = paramd;
  }
  
  public int a()
  {
    return g.b();
  }
  
  public int b()
  {
    return g.a();
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof AdSize)) {
      return false;
    }
    paramObject = (AdSize)paramObject;
    return g.equals(g);
  }
  
  public int hashCode()
  {
    return g.hashCode();
  }
  
  public String toString()
  {
    return g.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.ads.AdSize
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */