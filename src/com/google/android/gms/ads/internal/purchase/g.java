package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.common.stats.zzb;
import com.google.android.gms.internal.fc.a;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gz;

@fv
public final class g
  extends fc.a
  implements ServiceConnection
{
  b a;
  private boolean b = false;
  private Context c;
  private int d;
  private Intent e;
  private f f;
  private String g;
  
  public g(Context paramContext, String paramString, boolean paramBoolean, int paramInt, Intent paramIntent, f paramf)
  {
    g = paramString;
    d = paramInt;
    e = paramIntent;
    b = paramBoolean;
    c = paramContext;
    f = paramf;
  }
  
  public boolean a()
  {
    return b;
  }
  
  public String b()
  {
    return g;
  }
  
  public Intent c()
  {
    return e;
  }
  
  public int d()
  {
    return d;
  }
  
  public void e()
  {
    int i = s.o().a(e);
    if ((d != -1) || (i != 0)) {
      return;
    }
    a = new b(c);
    Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
    localIntent.setPackage("com.android.vending");
    zzb.zzrP().zza(c, localIntent, this, 1);
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    gz.c("In-app billing service connected.");
    a.a(paramIBinder);
    paramComponentName = s.o().b(e);
    paramComponentName = s.o().b(paramComponentName);
    if (paramComponentName == null) {
      return;
    }
    if (a.a(c.getPackageName(), paramComponentName) == 0) {
      h.a(c).a(f);
    }
    zzb.zzrP().zza(c, this);
    a.a();
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    gz.c("In-app billing service disconnected.");
    a.a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */