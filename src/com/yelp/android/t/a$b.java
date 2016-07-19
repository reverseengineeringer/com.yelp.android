package com.yelp.android.t;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

final class a$b
{
  File[] a;
  File[] b;
  private final String d;
  private final long[] e;
  private boolean f;
  private a.a g;
  private long h;
  
  private a$b(a parama, String paramString)
  {
    d = paramString;
    e = new long[a.e(parama)];
    a = new File[a.e(parama)];
    b = new File[a.e(parama)];
    paramString = new StringBuilder(paramString).append('.');
    int j = paramString.length();
    int i = 0;
    while (i < a.e(parama))
    {
      paramString.append(i);
      a[i] = new File(a.f(parama), paramString.toString());
      paramString.append(".tmp");
      b[i] = new File(a.f(parama), paramString.toString());
      paramString.setLength(j);
      i += 1;
    }
  }
  
  private void a(String[] paramArrayOfString)
    throws IOException
  {
    if (paramArrayOfString.length != a.e(c)) {
      throw b(paramArrayOfString);
    }
    int i = 0;
    try
    {
      while (i < paramArrayOfString.length)
      {
        e[i] = Long.parseLong(paramArrayOfString[i]);
        i += 1;
      }
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw b(paramArrayOfString);
    }
  }
  
  private IOException b(String[] paramArrayOfString)
    throws IOException
  {
    throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
  }
  
  public File a(int paramInt)
  {
    return a[paramInt];
  }
  
  public String a()
    throws IOException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    long[] arrayOfLong = e;
    int j = arrayOfLong.length;
    int i = 0;
    while (i < j)
    {
      long l = arrayOfLong[i];
      localStringBuilder.append(' ').append(l);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public File b(int paramInt)
  {
    return b[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.t.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */