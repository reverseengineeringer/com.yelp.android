package io.fabric.sdk.android.services.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import io.fabric.sdk.android.k;

class c
{
  private final Context a;
  private final com.yelp.android.cu.b b;
  
  public c(Context paramContext)
  {
    a = paramContext.getApplicationContext();
    b = new com.yelp.android.cu.c(paramContext, "TwitterAdvertisingInfoPreferences");
  }
  
  private void a(final b paramb)
  {
    new Thread(new h()
    {
      public void a()
      {
        b localb = c.a(c.this);
        if (!paramb.equals(localb))
        {
          io.fabric.sdk.android.c.h().a("Fabric", "Asychronously getting Advertising Info and storing it to preferences");
          c.a(c.this, localb);
        }
      }
    }).start();
  }
  
  @SuppressLint({"CommitPrefEdits"})
  private void b(b paramb)
  {
    if (c(paramb))
    {
      b.a(b.b().putString("advertising_id", a).putBoolean("limit_ad_tracking_enabled", b));
      return;
    }
    b.a(b.b().remove("advertising_id").remove("limit_ad_tracking_enabled"));
  }
  
  private boolean c(b paramb)
  {
    return (paramb != null) && (!TextUtils.isEmpty(a));
  }
  
  private b e()
  {
    b localb = c().a();
    if (!c(localb))
    {
      localb = d().a();
      if (!c(localb))
      {
        io.fabric.sdk.android.c.h().a("Fabric", "AdvertisingInfo not present");
        return localb;
      }
      io.fabric.sdk.android.c.h().a("Fabric", "Using AdvertisingInfo from Service Provider");
      return localb;
    }
    io.fabric.sdk.android.c.h().a("Fabric", "Using AdvertisingInfo from Reflection Provider");
    return localb;
  }
  
  public b a()
  {
    b localb = b();
    if (c(localb))
    {
      io.fabric.sdk.android.c.h().a("Fabric", "Using AdvertisingInfo from Preference Store");
      a(localb);
      return localb;
    }
    localb = e();
    b(localb);
    return localb;
  }
  
  protected b b()
  {
    return new b(b.a().getString("advertising_id", ""), b.a().getBoolean("limit_ad_tracking_enabled", false));
  }
  
  public f c()
  {
    return new d(a);
  }
  
  public f d()
  {
    return new e(a);
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.common.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */