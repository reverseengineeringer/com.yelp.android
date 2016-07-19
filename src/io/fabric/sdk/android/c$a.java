package io.fabric.sdk.android;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import io.fabric.sdk.android.services.common.IdManager;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class c$a
{
  private final Context a;
  private h[] b;
  private io.fabric.sdk.android.services.concurrency.h c;
  private Handler d;
  private k e;
  private boolean f;
  private String g;
  private String h;
  private f<c> i;
  
  public c$a(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Context must not be null.");
    }
    a = paramContext.getApplicationContext();
  }
  
  public a a(h... paramVarArgs)
  {
    if (b != null) {
      throw new IllegalStateException("Kits already set.");
    }
    b = paramVarArgs;
    return this;
  }
  
  public c a()
  {
    if (c == null) {
      c = io.fabric.sdk.android.services.concurrency.h.a();
    }
    if (d == null) {
      d = new Handler(Looper.getMainLooper());
    }
    if (e == null)
    {
      if (f) {
        e = new b(3);
      }
    }
    else
    {
      if (h == null) {
        h = a.getPackageName();
      }
      if (i == null) {
        i = f.d;
      }
      if (b != null) {
        break label182;
      }
    }
    label182:
    for (Object localObject = new HashMap();; localObject = c.a(Arrays.asList(b)))
    {
      IdManager localIdManager = new IdManager(a, h, g, ((Map)localObject).values());
      return new c(a, (Map)localObject, c, d, e, f, i, localIdManager);
      e = new b();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */