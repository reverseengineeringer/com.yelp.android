package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;

@ey
public class fb
  implements Runnable
{
  private final int li;
  private final int lj;
  protected final gu mo;
  private final Handler tr;
  private final long ts;
  private long tt;
  private gv.a tu;
  protected boolean tv;
  protected boolean tw;
  
  public fb(gv.a parama, gu paramgu, int paramInt1, int paramInt2)
  {
    this(parama, paramgu, paramInt1, paramInt2, 200L, 50L);
  }
  
  public fb(gv.a parama, gu paramgu, int paramInt1, int paramInt2, long paramLong1, long paramLong2)
  {
    ts = paramLong1;
    tt = paramLong2;
    tr = new Handler(Looper.getMainLooper());
    mo = paramgu;
    tu = parama;
    tv = false;
    tw = false;
    lj = paramInt2;
    li = paramInt1;
  }
  
  public void a(fj paramfj, gz paramgz)
  {
    mo.setWebViewClient(paramgz);
    gu localgu = mo;
    if (TextUtils.isEmpty(sg)) {}
    for (paramgz = null;; paramgz = gi.L(sg))
    {
      localgu.loadDataWithBaseURL(paramgz, tU, "text/html", "UTF-8", null);
      return;
    }
  }
  
  public void b(fj paramfj)
  {
    a(paramfj, new gz(this, mo, ud));
  }
  
  public void cF()
  {
    tr.postDelayed(this, ts);
  }
  
  public void cG()
  {
    try
    {
      tv = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean cH()
  {
    try
    {
      boolean bool = tv;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean cI()
  {
    return tw;
  }
  
  public void run()
  {
    if ((mo == null) || (cH()))
    {
      tu.a(mo);
      return;
    }
    new fb.a(this, mo).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */