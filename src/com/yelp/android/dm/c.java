package com.yelp.android.dm;

import java.util.concurrent.atomic.AtomicReference;
import rx.f;

public final class c
  implements f
{
  final AtomicReference<a> a = new AtomicReference(new a(false, d.a()));
  
  public void a(f paramf)
  {
    if (paramf == null) {
      throw new IllegalArgumentException("Subscription can not be null");
    }
    AtomicReference localAtomicReference = a;
    a locala;
    do
    {
      locala = (a)localAtomicReference.get();
      if (a)
      {
        paramf.unsubscribe();
        return;
      }
    } while (!localAtomicReference.compareAndSet(locala, locala.a(paramf)));
  }
  
  public boolean isUnsubscribed()
  {
    return a.get()).a;
  }
  
  public void unsubscribe()
  {
    AtomicReference localAtomicReference = a;
    a locala;
    do
    {
      locala = (a)localAtomicReference.get();
      if (a) {
        return;
      }
    } while (!localAtomicReference.compareAndSet(locala, locala.a()));
    b.unsubscribe();
  }
  
  private static final class a
  {
    final boolean a;
    final f b;
    
    a(boolean paramBoolean, f paramf)
    {
      a = paramBoolean;
      b = paramf;
    }
    
    a a()
    {
      return new a(true, b);
    }
    
    a a(f paramf)
    {
      return new a(a, paramf);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dm.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */