package com.yelp.android.services.push;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class e
{
  private final Map<String, WeakReference<a>> a = new HashMap();
  private String b;
  
  private boolean c(d.a parama)
  {
    if ((!TextUtils.isEmpty(b)) && (b.equals(parama.b()))) {
      return true;
    }
    b = parama.b();
    return false;
  }
  
  public void a(a parama)
  {
    if (parama != null) {
      a.put(parama.c(), new WeakReference(parama));
    }
  }
  
  public boolean a(d.a parama)
  {
    if (a.isEmpty()) {
      return true;
    }
    Iterator localIterator = a.values().iterator();
    boolean bool = true;
    if (localIterator.hasNext())
    {
      a locala = (a)((WeakReference)localIterator.next()).get();
      if (locala == null) {
        break label78;
      }
      bool = locala.b(parama) & bool;
    }
    label78:
    for (;;)
    {
      break;
      return bool;
    }
  }
  
  public void b(d.a parama)
  {
    if (c(parama)) {}
    for (;;)
    {
      return;
      Iterator localIterator = a.values().iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)((WeakReference)localIterator.next()).get();
        if (locala != null) {
          locala.a(parama);
        }
      }
    }
  }
  
  public void b(a parama)
  {
    if (parama != null) {
      a.remove(parama.c());
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(d.a parama);
    
    public abstract boolean b(d.a parama);
    
    public abstract String c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */