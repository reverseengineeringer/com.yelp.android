package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

@fv
public class hv<T>
  implements hu<T>
{
  protected int a = 0;
  protected final BlockingQueue<hv<T>.a> b = new LinkedBlockingQueue();
  protected T c;
  private final Object d = new Object();
  
  public void a(hu.c<T> paramc, hu.a parama)
  {
    for (;;)
    {
      synchronized (d)
      {
        if (a == 1)
        {
          paramc.a(c);
          return;
        }
        if (a == -1) {
          parama.a();
        }
      }
      if (a == 0) {
        b.add(new a(paramc, parama));
      }
    }
  }
  
  public void a(T paramT)
  {
    synchronized (d)
    {
      if (a != 0) {
        throw new UnsupportedOperationException();
      }
    }
    c = paramT;
    a = 1;
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      nexta.a(paramT);
    }
    b.clear();
  }
  
  public void e()
  {
    synchronized (d)
    {
      if (a != 0) {
        throw new UnsupportedOperationException();
      }
    }
    a = -1;
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      nextb.a();
    }
    b.clear();
  }
  
  public int f()
  {
    return a;
  }
  
  class a
  {
    public final hu.c<T> a;
    public final hu.a b;
    
    public a(hu.a parama)
    {
      a = parama;
      hu.a locala;
      b = locala;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */