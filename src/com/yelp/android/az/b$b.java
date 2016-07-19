package com.yelp.android.az;

import com.google.android.gms.internal.lk;
import com.google.android.gms.internal.lq;
import com.google.android.gms.internal.lt;
import com.google.android.gms.internal.zzsn;
import java.io.IOException;

public final class b$b
  extends lq
{
  public Long a;
  public Integer b;
  public Boolean c;
  public Integer d;
  
  public b$b()
  {
    a();
  }
  
  public b a()
  {
    a = null;
    b = null;
    c = null;
    d = null;
    S = -1;
    return this;
  }
  
  public b a(lk paramlk)
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
        i = paramlk.f();
        switch (i)
        {
        default: 
          break;
        case 0: 
        case 1: 
        case 2: 
        case 3: 
          b = Integer.valueOf(i);
        }
        break;
      case 24: 
        c = Boolean.valueOf(paramlk.g());
        break;
      case 32: 
        i = paramlk.f();
        switch (i)
        {
        default: 
          break;
        case 1: 
        case 2: 
        case 3: 
        case 4: 
        case 5: 
        case 6: 
        case 7: 
        case 8: 
        case 9: 
        case 10: 
        case 11: 
        case 12: 
        case 13: 
        case 14: 
        case 15: 
        case 16: 
        case 17: 
        case 18: 
        case 19: 
        case 20: 
        case 21: 
        case 22: 
        case 23: 
        case 24: 
        case 25: 
        case 26: 
        case 27: 
        case 28: 
        case 29: 
        case 30: 
        case 31: 
          d = Integer.valueOf(i);
        }
        break;
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
      paramzzsn.a(2, b.intValue());
    }
    if (c != null) {
      paramzzsn.a(3, c.booleanValue());
    }
    if (d != null) {
      paramzzsn.a(4, d.intValue());
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
      j = i + zzsn.b(2, b.intValue());
    }
    i = j;
    if (c != null) {
      i = j + zzsn.b(3, c.booleanValue());
    }
    j = i;
    if (d != null) {
      j = i + zzsn.b(4, d.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.az.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */