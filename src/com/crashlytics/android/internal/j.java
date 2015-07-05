package com.crashlytics.android.internal;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;

final class j
{
  private final v a;
  private final bi b;
  private ak c;
  private final bj d;
  private final int e;
  private List<bk> f = new CopyOnWriteArrayList();
  
  j(v paramv, bi parambi, bj parambj)
  {
    this(paramv, parambi, parambj, 100);
  }
  
  private j(v paramv, bi parambi, bj parambj, int paramInt)
  {
    a = paramv;
    d = parambj;
    b = parambi;
    b.a();
    e = 100;
  }
  
  private void a(String paramString)
  {
    paramString = f.iterator();
    while (paramString.hasNext())
    {
      bk localbk = (bk)paramString.next();
      try
      {
        localbk.c();
      }
      catch (Exception localException)
      {
        cl.a().b().a("Crashlytics", "One of the roll over listeners threw an exception", localException);
      }
    }
  }
  
  private static long b(String paramString)
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
  
  private int e()
  {
    if (c == null) {
      return 8000;
    }
    return c.c;
  }
  
  final void a(ak paramak)
  {
    c = paramak;
  }
  
  final void a(bk parambk)
  {
    if (parambk != null) {
      f.add(parambk);
    }
  }
  
  final void a(u paramu)
  {
    paramu = a.a(paramu);
    int i = paramu.length;
    if (!d.a(i, e()))
    {
      bd.a(4, String.format(Locale.US, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over", new Object[] { Integer.valueOf(d.a()), Integer.valueOf(i), Integer.valueOf(e()) }));
      a();
    }
    d.a(paramu);
  }
  
  final void a(List<File> paramList)
  {
    d.a(paramList);
  }
  
  final boolean a()
  {
    boolean bool = true;
    Object localObject = null;
    if (!d.b())
    {
      localObject = UUID.randomUUID();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("sa");
      localStringBuilder.append("_");
      localStringBuilder.append(((UUID)localObject).toString());
      localStringBuilder.append("_");
      localStringBuilder.append(b.a());
      localStringBuilder.append(".tap");
      localObject = localStringBuilder.toString();
      d.a((String)localObject);
      bd.a(4, String.format(Locale.US, "generated new to-send analytics file %s", new Object[] { localObject }));
      b.a();
    }
    for (;;)
    {
      a((String)localObject);
      return bool;
      bool = false;
    }
  }
  
  final List<File> b()
  {
    return d.a(1);
  }
  
  final void c()
  {
    d.a(d.c());
    d.d();
  }
  
  final void d()
  {
    Object localObject2 = d.c();
    if (((List)localObject2).size() <= e) {
      return;
    }
    int i = ((List)localObject2).size() - e;
    bd.c(String.format(Locale.US, "Found %d files in session analytics roll over directory, this is greater than %d, deleting %d oldest files", new Object[] { Integer.valueOf(((List)localObject2).size()), Integer.valueOf(e), Integer.valueOf(i) }));
    Object localObject1 = new TreeSet(new k(this));
    localObject2 = ((List)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      File localFile = (File)((Iterator)localObject2).next();
      ((TreeSet)localObject1).add(new l(this, localFile, b(localFile.getName())));
    }
    localObject2 = new ArrayList();
    localObject1 = ((TreeSet)localObject1).iterator();
    do
    {
      if (!((Iterator)localObject1).hasNext()) {
        break;
      }
      ((ArrayList)localObject2).add(nexta);
    } while (((ArrayList)localObject2).size() != i);
    d.a((List)localObject2);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */