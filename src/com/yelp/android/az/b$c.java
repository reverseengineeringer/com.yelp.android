package com.yelp.android.az;

import com.google.android.gms.internal.lk;
import com.google.android.gms.internal.lq;
import com.google.android.gms.internal.lt;
import com.google.android.gms.internal.zzsn;
import java.io.IOException;

public final class b$c
  extends lq
{
  public Long a;
  public String b;
  public byte[] c;
  
  public b$c()
  {
    a();
  }
  
  public c a()
  {
    a = null;
    b = null;
    c = null;
    S = -1;
    return this;
  }
  
  public c a(lk paramlk)
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
      case 26: 
        b = paramlk.h();
        break;
      case 34: 
        c = paramlk.i();
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
      paramzzsn.a(3, b);
    }
    if (c != null) {
      paramzzsn.a(4, c);
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
      j = i + zzsn.b(3, b);
    }
    i = j;
    if (c != null) {
      i = j + zzsn.b(4, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.az.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */