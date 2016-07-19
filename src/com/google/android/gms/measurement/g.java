package com.google.android.gms.measurement;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class g<T extends g>
{
  protected final d a;
  private final h b;
  private final List<e> c;
  
  protected g(h paramh, jt paramjt)
  {
    zzx.zzz(paramh);
    b = paramh;
    c = new ArrayList();
    paramh = new d(this, paramjt);
    paramh.k();
    a = paramh;
  }
  
  protected void a(d paramd) {}
  
  protected void b(d paramd)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      ((e)localIterator.next()).a(this, paramd);
    }
  }
  
  public d l()
  {
    d locald = a.a();
    b(locald);
    return locald;
  }
  
  public d m()
  {
    return a;
  }
  
  public List<j> n()
  {
    return a.c();
  }
  
  protected h o()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */