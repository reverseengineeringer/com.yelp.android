package com.yelp.android.ct;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.j;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class d<T>
{
  protected final Context a;
  protected final c<T> b;
  protected final j c;
  protected final g d;
  protected volatile long e;
  protected final List<h> f = new CopyOnWriteArrayList();
  private final int g;
  
  public d(Context paramContext, c<T> paramc, j paramj, g paramg, int paramInt)
    throws IOException
  {
    a = paramContext.getApplicationContext();
    b = paramc;
    d = paramg;
    c = paramj;
    e = c.a();
    g = paramInt;
  }
  
  private void a(int paramInt)
    throws IOException
  {
    if (!d.a(paramInt, c()))
    {
      String str = String.format(Locale.US, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over", new Object[] { Integer.valueOf(d.a()), Integer.valueOf(paramInt), Integer.valueOf(c()) });
      CommonUtils.a(a, 4, "Fabric", str);
      d();
    }
  }
  
  private void b(String paramString)
  {
    Iterator localIterator = f.iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      try
      {
        localh.a(paramString);
      }
      catch (Exception localException)
      {
        CommonUtils.a(a, "One of the roll over listeners threw an exception", localException);
      }
    }
  }
  
  public long a(String paramString)
  {
    paramString = paramString.split("_");
    if (paramString.length != 3) {
      return 0L;
    }
    try
    {
      long l = Long.valueOf(paramString[2]).longValue();
      return l;
    }
    catch (NumberFormatException paramString) {}
    return 0L;
  }
  
  protected abstract String a();
  
  public void a(h paramh)
  {
    if (paramh != null) {
      f.add(paramh);
    }
  }
  
  public void a(T paramT)
    throws IOException
  {
    paramT = b.a(paramT);
    a(paramT.length);
    d.a(paramT);
  }
  
  public void a(List<File> paramList)
  {
    d.a(paramList);
  }
  
  protected int b()
  {
    return g;
  }
  
  protected int c()
  {
    return 8000;
  }
  
  public boolean d()
    throws IOException
  {
    boolean bool = true;
    String str = null;
    if (!d.b())
    {
      str = a();
      d.a(str);
      CommonUtils.a(a, 4, "Fabric", String.format(Locale.US, "generated new file %s", new Object[] { str }));
      e = c.a();
    }
    for (;;)
    {
      b(str);
      return bool;
      bool = false;
    }
  }
  
  public List<File> e()
  {
    return d.a(1);
  }
  
  public void f()
  {
    d.a(d.c());
    d.d();
  }
  
  public void g()
  {
    Object localObject2 = d.c();
    int i = b();
    if (((List)localObject2).size() <= i) {
      return;
    }
    int j = ((List)localObject2).size() - i;
    CommonUtils.a(a, String.format(Locale.US, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files", new Object[] { Integer.valueOf(((List)localObject2).size()), Integer.valueOf(i), Integer.valueOf(j) }));
    Object localObject1 = new TreeSet(new Comparator()
    {
      public int a(d.a paramAnonymousa1, d.a paramAnonymousa2)
      {
        return (int)(b - b);
      }
    });
    localObject2 = ((List)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      File localFile = (File)((Iterator)localObject2).next();
      ((TreeSet)localObject1).add(new a(localFile, a(localFile.getName())));
    }
    localObject2 = new ArrayList();
    localObject1 = ((TreeSet)localObject1).iterator();
    do
    {
      if (!((Iterator)localObject1).hasNext()) {
        break;
      }
      ((ArrayList)localObject2).add(nexta);
    } while (((ArrayList)localObject2).size() != j);
    d.a((List)localObject2);
  }
  
  static class a
  {
    final File a;
    final long b;
    
    public a(File paramFile, long paramLong)
    {
      a = paramFile;
      b = paramLong;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ct.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */