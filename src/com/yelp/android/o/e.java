package com.yelp.android.o;

import java.io.File;

public final class e
{
  private final String b;
  private final long c;
  private final long[] d;
  private final File[] e;
  
  private e(a parama, String paramString, long paramLong, File[] paramArrayOfFile, long[] paramArrayOfLong)
  {
    b = paramString;
    c = paramLong;
    e = paramArrayOfFile;
    d = paramArrayOfLong;
  }
  
  public File a(int paramInt)
  {
    return e[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.o.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */