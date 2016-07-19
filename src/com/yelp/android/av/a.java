package com.yelp.android.av;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.yelp.android.cu.b;
import io.fabric.sdk.android.k;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.settings.f;
import java.util.concurrent.atomic.AtomicBoolean;

abstract class a
  implements j
{
  private final AtomicBoolean a = new AtomicBoolean();
  private final AtomicBoolean b;
  private Context c;
  private c d;
  private IdManager e;
  private f f;
  private d g;
  private b h;
  private io.fabric.sdk.android.services.common.j i;
  private io.fabric.sdk.android.services.network.c j;
  private long k = 0L;
  
  public a()
  {
    this(false);
  }
  
  public a(boolean paramBoolean)
  {
    b = new AtomicBoolean(paramBoolean);
  }
  
  private void e()
  {
    io.fabric.sdk.android.c.h().a("Beta", "Performing update check");
    String str1 = new io.fabric.sdk.android.services.common.g().a(c);
    String str2 = e.a(str1, g.d);
    new e(d, d.g(), f.a, j, new g()).a(str1, str2, g);
  }
  
  void a(long paramLong)
  {
    k = paramLong;
  }
  
  public void a(Context paramContext, c paramc, IdManager paramIdManager, f paramf, d paramd, b paramb, io.fabric.sdk.android.services.common.j paramj, io.fabric.sdk.android.services.network.c paramc1)
  {
    c = paramContext;
    d = paramc;
    e = paramIdManager;
    f = paramf;
    g = paramd;
    h = paramb;
    i = paramj;
    j = paramc1;
    if (b()) {
      c();
    }
  }
  
  protected boolean a()
  {
    b.set(true);
    return a.get();
  }
  
  boolean b()
  {
    a.set(true);
    return b.get();
  }
  
  @SuppressLint({"CommitPrefEdits"})
  protected void c()
  {
    long l1;
    synchronized (h)
    {
      if (h.a().contains("last_update_check")) {
        h.a(h.b().remove("last_update_check"));
      }
      l1 = i.a();
      long l2 = f.b * 1000L;
      io.fabric.sdk.android.c.h().a("Beta", "Check for updates delay: " + l2);
      io.fabric.sdk.android.c.h().a("Beta", "Check for updates last check time: " + d());
      l2 += d();
      io.fabric.sdk.android.c.h().a("Beta", "Check for updates current time: " + l1 + ", next check time: " + l2);
      if (l1 < l2) {}
    }
    io.fabric.sdk.android.c.h().a("Beta", "Check for updates next check time was not passed");
  }
  
  long d()
  {
    return k;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.av.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */