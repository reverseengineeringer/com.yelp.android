package com.path.android.jobqueue.nonPersistentQueue;

import com.path.android.jobqueue.a;
import com.path.android.jobqueue.c;
import java.util.Collection;
import java.util.Comparator;

public class f
  implements c
{
  public final Comparator<a> a = new Comparator()
  {
    public int a(a paramAnonymousa1, a paramAnonymousa2)
    {
      int i = f.a(paramAnonymousa1.c(), paramAnonymousa2.c());
      if (i != 0) {}
      int j;
      do
      {
        return i;
        j = -f.a(paramAnonymousa1.e(), paramAnonymousa2.e());
        i = j;
      } while (j != 0);
      return -f.a(paramAnonymousa1.a().longValue(), paramAnonymousa2.a().longValue());
    }
  };
  private long b = -2147483648L;
  private d c;
  private final String d;
  private final long e;
  
  public f(long paramLong, String paramString, boolean paramBoolean)
  {
    d = paramString;
    e = paramLong;
    c = new d(5, a);
  }
  
  private static int b(int paramInt1, int paramInt2)
  {
    if (paramInt1 > paramInt2) {
      return -1;
    }
    if (paramInt2 > paramInt1) {
      return 1;
    }
    return 0;
  }
  
  private static int b(long paramLong1, long paramLong2)
  {
    if (paramLong1 > paramLong2) {
      return -1;
    }
    if (paramLong2 > paramLong1) {
      return 1;
    }
    return 0;
  }
  
  public int a()
  {
    return c.a();
  }
  
  public int a(boolean paramBoolean, Collection<String> paramCollection)
  {
    return c.b(paramBoolean, paramCollection).a();
  }
  
  public long a(a parama)
  {
    try
    {
      b += 1L;
      parama.a(Long.valueOf(b));
      c.a(parama);
      long l = parama.a().longValue();
      return l;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  public long b(a parama)
  {
    c(parama);
    parama.b(Long.MIN_VALUE);
    c.a(parama);
    return parama.a().longValue();
  }
  
  public a b(boolean paramBoolean, Collection<String> paramCollection)
  {
    a locala = c.a(paramBoolean, paramCollection);
    paramCollection = locala;
    if (locala != null)
    {
      if (locala.g() > System.nanoTime()) {
        paramCollection = null;
      }
    }
    else {
      return paramCollection;
    }
    locala.b(e);
    locala.c(locala.d() + 1);
    c.b(locala);
    return locala;
  }
  
  public Long c(boolean paramBoolean, Collection<String> paramCollection)
  {
    paramCollection = c.a(paramBoolean, paramCollection);
    if (paramCollection == null) {
      return null;
    }
    return Long.valueOf(paramCollection.g());
  }
  
  public void c(a parama)
  {
    c.b(parama);
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.nonPersistentQueue.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */