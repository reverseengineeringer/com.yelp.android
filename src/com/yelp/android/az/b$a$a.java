package com.yelp.android.az;

import com.google.android.gms.internal.lk;
import com.google.android.gms.internal.lp;
import com.google.android.gms.internal.lq;
import com.google.android.gms.internal.lt;
import com.google.android.gms.internal.zzsn;
import java.io.IOException;

public final class b$a$a
  extends lq
{
  private static volatile a[] c;
  public Long a;
  public Long b;
  
  public b$a$a()
  {
    c();
  }
  
  public static a[] a()
  {
    if (c == null) {}
    synchronized (lp.a)
    {
      if (c == null) {
        c = new a[0];
      }
      return c;
    }
  }
  
  public a a(lk paramlk)
    throws IOException
  {
    for (;;)
    {
      int i = paramlk.a();
      switch (i)
      {
      default: 
        if (lt.a(paramlk, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        a = Long.valueOf(paramlk.e());
        break;
      case 16: 
        b = Long.valueOf(paramlk.e());
      }
    }
  }
  
  public void a(zzsn paramzzsn)
    throws IOException
  {
    if (a != null) {
      paramzzsn.b(1, a.longValue());
    }
    if (b != null) {
      paramzzsn.b(2, b.longValue());
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + zzsn.d(1, a.longValue());
    }
    j = i;
    if (b != null) {
      j = i + zzsn.d(2, b.longValue());
    }
    return j;
  }
  
  public a c()
  {
    a = null;
    b = null;
    S = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.az.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */