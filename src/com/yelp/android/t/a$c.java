package com.yelp.android.t;

import java.io.File;

public final class a$c
{
  private final String b;
  private final long c;
  private final long[] d;
  private final File[] e;
  
  private a$c(a parama, String paramString, long paramLong, File[] paramArrayOfFile, long[] paramArrayOfLong)
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
 * Qualified Name:     com.yelp.android.t.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */