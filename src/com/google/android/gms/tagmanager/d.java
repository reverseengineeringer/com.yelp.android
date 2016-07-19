package com.google.android.gms.tagmanager;

import android.annotation.TargetApi;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build.VERSION;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class d
{
  private static d g;
  private final a a;
  private final Context b;
  private final c c;
  private final ac d;
  private final ConcurrentMap<ak, Boolean> e;
  private final al f;
  
  d(Context paramContext, a parama, c paramc, ac paramac)
  {
    if (paramContext == null) {
      throw new NullPointerException("context cannot be null");
    }
    b = paramContext.getApplicationContext();
    d = paramac;
    a = parama;
    e = new ConcurrentHashMap();
    c = paramc;
    c.a(new c.b()
    {
      public void a(Map<String, Object> paramAnonymousMap)
      {
        paramAnonymousMap = paramAnonymousMap.get("event");
        if (paramAnonymousMap != null) {
          d.a(d.this, paramAnonymousMap.toString());
        }
      }
    });
    c.a(new af(b));
    f = new al();
    b();
  }
  
  public static d a(Context paramContext)
  {
    try
    {
      if (g != null) {
        break label68;
      }
      if (paramContext == null)
      {
        m.a("TagManager.getInstance requires non-null context.");
        throw new NullPointerException();
      }
    }
    finally {}
    g = new d(paramContext, new a()new cnew an {}, new c(new an(paramContext)), ad.b());
    label68:
    paramContext = g;
    return paramContext;
  }
  
  private void a(String paramString)
  {
    Iterator localIterator = e.keySet().iterator();
    while (localIterator.hasNext()) {
      ((ak)localIterator.next()).a(paramString);
    }
  }
  
  @TargetApi(14)
  private void b()
  {
    if (Build.VERSION.SDK_INT >= 14) {
      b.registerComponentCallbacks(new ComponentCallbacks2()
      {
        public void onConfigurationChanged(Configuration paramAnonymousConfiguration) {}
        
        public void onLowMemory() {}
        
        public void onTrimMemory(int paramAnonymousInt)
        {
          if (paramAnonymousInt == 20) {
            a();
          }
        }
      });
    }
  }
  
  public void a()
  {
    d.a();
  }
  
  boolean a(Uri paramUri)
  {
    for (;;)
    {
      boolean bool;
      Object localObject2;
      try
      {
        localObject1 = zzcb.a();
        if (!((zzcb)localObject1).a(paramUri)) {
          break label229;
        }
        paramUri = ((zzcb)localObject1).d();
        int i = 4.a[localObject1.b().ordinal()];
        switch (i)
        {
        default: 
          bool = true;
          return bool;
        }
      }
      finally {}
      Object localObject1 = e.keySet().iterator();
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ak)((Iterator)localObject1).next();
        if (((ak)localObject2).b().equals(paramUri))
        {
          ((ak)localObject2).b(null);
          ((ak)localObject2).a();
        }
      }
      else
      {
        continue;
        localObject2 = e.keySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          ak localak = (ak)((Iterator)localObject2).next();
          if (localak.b().equals(paramUri))
          {
            localak.b(((zzcb)localObject1).c());
            localak.a();
          }
          else if (localak.c() != null)
          {
            localak.b(null);
            localak.a();
          }
        }
        continue;
        label229:
        bool = false;
      }
    }
  }
  
  public boolean a(ak paramak)
  {
    return e.remove(paramak) != null;
  }
  
  public static abstract interface a {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */