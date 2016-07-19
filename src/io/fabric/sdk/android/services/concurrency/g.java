package io.fabric.sdk.android.services.concurrency;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class g
  implements a<i>, f, i
{
  private final List<i> a = new ArrayList();
  private final AtomicBoolean b = new AtomicBoolean(false);
  private final AtomicReference<Throwable> c = new AtomicReference(null);
  
  public static boolean a(Object paramObject)
  {
    try
    {
      a locala = (a)paramObject;
      i locali = (i)paramObject;
      paramObject = (f)paramObject;
      return (locala != null) && (locali != null) && (paramObject != null);
    }
    catch (ClassCastException paramObject) {}
    return false;
  }
  
  public void a(i parami)
  {
    try
    {
      a.add(parami);
      return;
    }
    finally
    {
      parami = finally;
      throw parami;
    }
  }
  
  public void a(Throwable paramThrowable)
  {
    c.set(paramThrowable);
  }
  
  public Priority b()
  {
    return Priority.NORMAL;
  }
  
  public void b(boolean paramBoolean)
  {
    try
    {
      b.set(paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public Collection<i> c()
  {
    try
    {
      Collection localCollection = Collections.unmodifiableCollection(a);
      return localCollection;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int compareTo(Object paramObject)
  {
    return Priority.compareTo(this, paramObject);
  }
  
  public boolean d()
  {
    Iterator localIterator = c().iterator();
    while (localIterator.hasNext()) {
      if (!((i)localIterator.next()).f()) {
        return false;
      }
    }
    return true;
  }
  
  public boolean f()
  {
    return b.get();
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */