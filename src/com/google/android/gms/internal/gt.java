package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.security.NetworkSecurityPolicy;
import com.google.android.gms.ads.internal.purchase.i;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.zze;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.Future;

@fv
public class gt
  implements hb.b
{
  private final Object a = new Object();
  private final String b;
  private final gu c;
  private r d;
  private BigInteger e = BigInteger.ONE;
  private final HashSet<gs> f = new HashSet();
  private final HashMap<String, gw> g = new HashMap();
  private boolean h = false;
  private boolean i = true;
  private int j = 0;
  private boolean k = false;
  private Context l;
  private VersionInfoParcel m;
  private aq n = null;
  private boolean o = true;
  private z p = null;
  private aa q = null;
  private y r = null;
  private String s;
  private final LinkedList<Thread> t = new LinkedList();
  private final fu u = null;
  private Boolean v = null;
  private String w;
  private boolean x = false;
  private boolean y = false;
  
  public gt(hd paramhd)
  {
    b = paramhd.c();
    c = new gu(b);
  }
  
  public Bundle a(Context paramContext, gv paramgv, String paramString)
  {
    Bundle localBundle;
    synchronized (a)
    {
      localBundle = new Bundle();
      localBundle.putBundle("app", c.a(paramContext, paramString));
      paramContext = new Bundle();
      paramString = g.keySet().iterator();
      if (paramString.hasNext())
      {
        String str = (String)paramString.next();
        paramContext.putBundle(str, ((gw)g.get(str)).a());
      }
    }
    localBundle.putBundle("slots", paramContext);
    paramContext = new ArrayList();
    paramString = f.iterator();
    while (paramString.hasNext()) {
      paramContext.add(((gs)paramString.next()).d());
    }
    localBundle.putParcelableArrayList("ads", paramContext);
    paramgv.a(f);
    f.clear();
    return localBundle;
  }
  
  public aa a(Context paramContext)
  {
    if ((!((Boolean)ao.J.c()).booleanValue()) || (!kf.c()) || (b())) {
      return null;
    }
    synchronized (a)
    {
      if (p == null)
      {
        if (!(paramContext instanceof Activity)) {
          return null;
        }
        p = new z((Application)paramContext.getApplicationContext(), (Activity)paramContext);
      }
      if (r == null) {
        r = new y();
      }
      if (q == null) {
        q = new aa(p, r, new fu(l, m, null, null));
      }
      q.a();
      paramContext = q;
      return paramContext;
    }
  }
  
  public String a()
  {
    return b;
  }
  
  public String a(int paramInt, String paramString)
  {
    if (m.e) {}
    for (Resources localResources = l.getResources(); localResources == null; localResources = zze.getRemoteResource(l)) {
      return paramString;
    }
    return localResources.getString(paramInt);
  }
  
  public Future a(Context paramContext, boolean paramBoolean)
  {
    synchronized (a)
    {
      if (paramBoolean != i)
      {
        i = paramBoolean;
        paramContext = hb.a(paramContext, paramBoolean);
        return paramContext;
      }
      return null;
    }
  }
  
  public Future a(String paramString)
  {
    Object localObject = a;
    if (paramString != null) {}
    try
    {
      if (!paramString.equals(s))
      {
        s = paramString;
        paramString = hb.a(l, paramString);
        return paramString;
      }
      return null;
    }
    finally {}
  }
  
  @TargetApi(23)
  public void a(Context paramContext, VersionInfoParcel paramVersionInfoParcel)
  {
    synchronized (a)
    {
      if (!k)
      {
        l = paramContext.getApplicationContext();
        m = paramVersionInfoParcel;
        hb.a(paramContext, this);
        hb.b(paramContext, this);
        hb.c(paramContext, this);
        hb.d(paramContext, this);
        a(Thread.currentThread());
        w = s.e().a(paramContext, b);
        if ((kf.k()) && (!NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted())) {
          y = true;
        }
        d = new r(paramContext.getApplicationContext(), m, new db(paramContext.getApplicationContext(), m, (String)ao.b.c()));
        n();
        s.o().a(l);
        k = true;
      }
      return;
    }
  }
  
  public void a(Bundle paramBundle)
  {
    synchronized (a)
    {
      if (paramBundle.containsKey("use_https")) {}
      for (boolean bool = paramBundle.getBoolean("use_https");; bool = i)
      {
        i = bool;
        if (!paramBundle.containsKey("webview_cache_version")) {
          break;
        }
        i1 = paramBundle.getInt("webview_cache_version");
        j = i1;
        if (paramBundle.containsKey("content_url_opted_out")) {
          a(paramBundle.getBoolean("content_url_opted_out"));
        }
        if (paramBundle.containsKey("content_url_hashes")) {
          s = paramBundle.getString("content_url_hashes");
        }
        return;
      }
      int i1 = j;
    }
  }
  
  public void a(gs paramgs)
  {
    synchronized (a)
    {
      f.add(paramgs);
      return;
    }
  }
  
  public void a(Boolean paramBoolean)
  {
    synchronized (a)
    {
      v = paramBoolean;
      return;
    }
  }
  
  public void a(String paramString, gw paramgw)
  {
    synchronized (a)
    {
      g.put(paramString, paramgw);
      return;
    }
  }
  
  public void a(Thread paramThread)
  {
    fu.a(l, paramThread, m);
  }
  
  public void a(Throwable paramThrowable, boolean paramBoolean)
  {
    new fu(l, m, null, null).a(paramThrowable, paramBoolean);
  }
  
  public void a(HashSet<gs> paramHashSet)
  {
    synchronized (a)
    {
      f.addAll(paramHashSet);
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    synchronized (a)
    {
      if (o != paramBoolean) {
        hb.b(l, paramBoolean);
      }
      o = paramBoolean;
      aa localaa = a(l);
      if ((localaa != null) && (!localaa.isAlive()))
      {
        gz.c("start fetching content...");
        localaa.a();
      }
      return;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    synchronized (a)
    {
      x = paramBoolean;
      return;
    }
  }
  
  public boolean b()
  {
    synchronized (a)
    {
      boolean bool = o;
      return bool;
    }
  }
  
  public String c()
  {
    synchronized (a)
    {
      String str = e.toString();
      e = e.add(BigInteger.ONE);
      return str;
    }
  }
  
  public gu d()
  {
    synchronized (a)
    {
      gu localgu = c;
      return localgu;
    }
  }
  
  public aq e()
  {
    synchronized (a)
    {
      aq localaq = n;
      return localaq;
    }
  }
  
  public boolean f()
  {
    synchronized (a)
    {
      boolean bool = h;
      h = true;
      return bool;
    }
  }
  
  public boolean g()
  {
    for (;;)
    {
      synchronized (a)
      {
        if (!i)
        {
          if (!y) {
            break label38;
          }
          break label33;
          return bool;
        }
      }
      label33:
      boolean bool = true;
      continue;
      label38:
      bool = false;
    }
  }
  
  public String h()
  {
    synchronized (a)
    {
      String str = w;
      return str;
    }
  }
  
  public String i()
  {
    synchronized (a)
    {
      String str = s;
      return str;
    }
  }
  
  public Boolean j()
  {
    synchronized (a)
    {
      Boolean localBoolean = v;
      return localBoolean;
    }
  }
  
  public r k()
  {
    return d;
  }
  
  public boolean l()
  {
    synchronized (a)
    {
      if (j < ((Integer)ao.aa.c()).intValue())
      {
        j = ((Integer)ao.aa.c()).intValue();
        hb.a(l, j);
        return true;
      }
      return false;
    }
  }
  
  public boolean m()
  {
    synchronized (a)
    {
      boolean bool = x;
      return bool;
    }
  }
  
  void n()
  {
    ap localap = new ap(l, m.b);
    try
    {
      n = s.j().a(localap);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      gz.d("Cannot initialize CSI reporter.", localIllegalArgumentException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */