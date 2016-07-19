package com.yelp.android.az;

import com.google.android.gms.internal.lk;
import com.google.android.gms.internal.lq;
import com.google.android.gms.internal.lt;
import com.google.android.gms.internal.zzsn;
import java.io.IOException;

public abstract interface a
{
  public static final class a
    extends lq
  {
    public String a;
    
    public a()
    {
      a();
    }
    
    public a a()
    {
      a = "";
      S = -1;
      return this;
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
        case 10: 
          a = paramlk.h();
        }
      }
    }
    
    public void a(zzsn paramzzsn)
      throws IOException
    {
      if (!a.equals("")) {
        paramzzsn.a(1, a);
      }
      super.a(paramzzsn);
    }
    
    protected int b()
    {
      int j = super.b();
      int i = j;
      if (!a.equals("")) {
        i = j + zzsn.b(1, a);
      }
      return i;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.az.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */