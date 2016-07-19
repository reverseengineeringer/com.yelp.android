package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.ads.internal.s;

@fv
public class cj
  extends gy
{
  final ib a;
  final cl b;
  private final String c;
  
  cj(ib paramib, cl paramcl, String paramString)
  {
    a = paramib;
    b = paramcl;
    c = paramString;
    s.t().a(this);
  }
  
  public void a()
  {
    try
    {
      b.a(c);
      return;
    }
    finally
    {
      hd.a.post(new Runnable()
      {
        public void run()
        {
          s.t().b(cj.this);
        }
      });
    }
  }
  
  public void b()
  {
    b.a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */