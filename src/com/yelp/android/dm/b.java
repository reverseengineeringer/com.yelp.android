package com.yelp.android.dm;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import rx.exceptions.a;
import rx.f;

public final class b
  implements f
{
  private Set<f> a;
  private volatile boolean b;
  
  private static void a(Collection<f> paramCollection)
  {
    if (paramCollection == null) {
      return;
    }
    f localf = null;
    Iterator localIterator = paramCollection.iterator();
    paramCollection = localf;
    for (;;)
    {
      if (!localIterator.hasNext()) {
        break label68;
      }
      localf = (f)localIterator.next();
      try
      {
        localf.unsubscribe();
      }
      catch (Throwable localThrowable)
      {
        if (paramCollection != null) {
          break label73;
        }
      }
    }
    paramCollection = new ArrayList();
    label68:
    label73:
    for (;;)
    {
      paramCollection.add(localThrowable);
      break;
      a.a(paramCollection);
      return;
    }
  }
  
  public void a()
  {
    if (!b) {
      try
      {
        if ((b) || (a == null)) {
          return;
        }
        Set localSet = a;
        a = null;
        a(localSet);
        return;
      }
      finally {}
    }
  }
  
  public void a(f paramf)
  {
    if (paramf.isUnsubscribed()) {
      return;
    }
    if (!b) {
      try
      {
        if (!b)
        {
          if (a == null) {
            a = new HashSet(4);
          }
          a.add(paramf);
          return;
        }
      }
      finally {}
    }
    paramf.unsubscribe();
  }
  
  public void b(f paramf)
  {
    if (!b) {
      try
      {
        if ((b) || (a == null)) {
          return;
        }
        boolean bool = a.remove(paramf);
        if (bool)
        {
          paramf.unsubscribe();
          return;
        }
      }
      finally {}
    }
  }
  
  public boolean isUnsubscribed()
  {
    return b;
  }
  
  public void unsubscribe()
  {
    if (!b) {
      try
      {
        if (b) {
          return;
        }
        b = true;
        Set localSet = a;
        a = null;
        a(localSet);
        return;
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dm.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */