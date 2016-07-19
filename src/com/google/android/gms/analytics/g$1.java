package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.internal.a;
import com.google.android.gms.analytics.internal.ag;
import com.google.android.gms.analytics.internal.e;
import com.google.android.gms.analytics.internal.n;
import com.google.android.gms.analytics.internal.p;
import com.google.android.gms.analytics.internal.s;
import com.google.android.gms.analytics.internal.v;
import com.google.android.gms.analytics.internal.y;
import com.google.android.gms.internal.kp;
import com.google.android.gms.internal.kr;
import java.util.HashMap;
import java.util.Map;

class g$1
  implements Runnable
{
  g$1(g paramg, Map paramMap, boolean paramBoolean1, String paramString1, long paramLong, boolean paramBoolean2, boolean paramBoolean3, String paramString2) {}
  
  public void run()
  {
    boolean bool = true;
    if (g.a(h).b()) {
      a.put("sc", "start");
    }
    n.b(a, "cid", h.s().h());
    Object localObject = (String)a.get("sf");
    if (localObject != null)
    {
      double d1 = n.a((String)localObject, 100.0D);
      if (n.a(d1, (String)a.get("cid")))
      {
        h.b("Sampling enabled. Hit sampled out. sample rate", Double.valueOf(d1));
        return;
      }
    }
    localObject = g.b(h);
    if (b)
    {
      n.a(a, "ate", ((a)localObject).b());
      n.a(a, "adid", ((a)localObject).c());
      localObject = g.c(h).c();
      n.a(a, "an", ((kp)localObject).a());
      n.a(a, "av", ((kp)localObject).b());
      n.a(a, "aid", ((kp)localObject).c());
      n.a(a, "aiid", ((kp)localObject).d());
      a.put("v", "1");
      a.put("_v", s.b);
      n.a(a, "ul", g.d(h).b().f());
      n.a(a, "sr", g.e(h).c());
      if ((!c.equals("transaction")) && (!c.equals("item"))) {
        break label383;
      }
    }
    label383:
    for (int i = 1;; i = 0)
    {
      if ((i != 0) || (g.f(h).a())) {
        break label388;
      }
      g.g(h).a(a, "Too many hits sent too quickly, rate limiting invoked");
      return;
      a.remove("ate");
      a.remove("adid");
      break;
    }
    label388:
    long l2 = n.b((String)a.get("ht"));
    long l1 = l2;
    if (l2 == 0L) {
      l1 = d;
    }
    if (e)
    {
      localObject = new com.google.android.gms.analytics.internal.c(h, a, l1, f);
      g.h(h).c("Dry run enabled. Would have sent hit", localObject);
      return;
    }
    localObject = (String)a.get("cid");
    HashMap localHashMap = new HashMap();
    n.a(localHashMap, "uid", a);
    n.a(localHashMap, "an", a);
    n.a(localHashMap, "aid", a);
    n.a(localHashMap, "av", a);
    n.a(localHashMap, "aiid", a);
    String str = g;
    if (!TextUtils.isEmpty((CharSequence)a.get("adid"))) {}
    for (;;)
    {
      localObject = new v(0L, (String)localObject, str, bool, 0L, localHashMap);
      l2 = g.i(h).a((v)localObject);
      a.put("_s", String.valueOf(l2));
      localObject = new com.google.android.gms.analytics.internal.c(h, a, l1, f);
      g.j(h).a((com.google.android.gms.analytics.internal.c)localObject);
      return;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.g.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */