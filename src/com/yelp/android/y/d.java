package com.yelp.android.y;

import java.io.File;

public class d
  implements a.a
{
  private final int a;
  private final a b;
  
  public d(a parama, int paramInt)
  {
    a = paramInt;
    b = parama;
  }
  
  public a a()
  {
    File localFile = b.a();
    if (localFile == null) {}
    while ((!localFile.mkdirs()) && ((!localFile.exists()) || (!localFile.isDirectory()))) {
      return null;
    }
    return e.a(localFile, a);
  }
  
  public static abstract interface a
  {
    public abstract File a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.y.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */