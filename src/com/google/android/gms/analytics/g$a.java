package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.m;
import com.google.android.gms.analytics.internal.r;
import com.google.android.gms.analytics.internal.t;
import com.google.android.gms.internal.jt;
import java.util.HashMap;
import java.util.Map;

class g$a
  extends r
  implements c.a
{
  private boolean b;
  private int c;
  private long d = -1L;
  private boolean e;
  private long f;
  
  protected g$a(g paramg, t paramt)
  {
    super(paramt);
  }
  
  private void d()
  {
    if ((d >= 0L) || (b))
    {
      s().a(g.a(a));
      return;
    }
    s().b(g.a(a));
  }
  
  protected void a() {}
  
  public void a(long paramLong)
  {
    d = paramLong;
    d();
  }
  
  public void a(Activity paramActivity)
  {
    if ((c == 0) && (c())) {
      e = true;
    }
    c += 1;
    HashMap localHashMap;
    g localg;
    if (b)
    {
      localObject = paramActivity.getIntent();
      if (localObject != null) {
        a.a(((Intent)localObject).getData());
      }
      localHashMap = new HashMap();
      localHashMap.put("&t", "screenview");
      localg = a;
      if (g.k(a) == null) {
        break label159;
      }
    }
    label159:
    for (Object localObject = g.k(a).a(paramActivity);; localObject = paramActivity.getClass().getCanonicalName())
    {
      localg.a("&cd", (String)localObject);
      if (TextUtils.isEmpty((CharSequence)localHashMap.get("&dr")))
      {
        paramActivity = g.a(paramActivity);
        if (!TextUtils.isEmpty(paramActivity)) {
          localHashMap.put("&dr", paramActivity);
        }
      }
      a.a(localHashMap);
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
    d();
  }
  
  public void b(Activity paramActivity)
  {
    c -= 1;
    c = Math.max(0, c);
    if (c == 0) {
      f = n().b();
    }
  }
  
  public boolean b()
  {
    try
    {
      boolean bool = e;
      e = false;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  boolean c()
  {
    return n().b() >= f + Math.max(1000L, d);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */