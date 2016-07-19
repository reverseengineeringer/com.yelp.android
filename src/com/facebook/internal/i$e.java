package com.facebook.internal;

import java.io.File;

final class i$e
  implements Comparable<e>
{
  private final File a;
  private final long b;
  
  i$e(File paramFile)
  {
    a = paramFile;
    b = paramFile.lastModified();
  }
  
  public int a(e parame)
  {
    if (b() < parame.b()) {
      return -1;
    }
    if (b() > parame.b()) {
      return 1;
    }
    return a().compareTo(parame.a());
  }
  
  File a()
  {
    return a;
  }
  
  long b()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof e)) && (a((e)paramObject) == 0);
  }
  
  public int hashCode()
  {
    return (a.hashCode() + 1073) * 37 + (int)(b % 2147483647L);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.i.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */