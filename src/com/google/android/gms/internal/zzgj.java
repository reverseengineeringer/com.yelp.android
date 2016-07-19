package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.t;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;

@fv
public final class zzgj
  extends zzg<fb>
{
  private static final zzgj a = new zzgj();
  
  private zzgj()
  {
    super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
  }
  
  public static fa a(Activity paramActivity)
  {
    try
    {
      fa localfa1;
      if (!b(paramActivity))
      {
        fa localfa2 = a.c(paramActivity);
        localfa1 = localfa2;
        if (localfa2 != null) {}
      }
      else
      {
        gz.a("Using AdOverlay from the client jar.");
        localfa1 = v.c().a(paramActivity);
      }
      return localfa1;
    }
    catch (zza paramActivity)
    {
      gz.d(paramActivity.getMessage());
    }
    return null;
  }
  
  private static boolean b(Activity paramActivity)
    throws zzgj.zza
  {
    paramActivity = paramActivity.getIntent();
    if (!paramActivity.hasExtra("com.google.android.gms.ads.internal.purchase.useClientJar")) {
      throw new zza("InAppPurchaseManager requires the useClientJar flag in intent extras.");
    }
    return paramActivity.getBooleanExtra("com.google.android.gms.ads.internal.purchase.useClientJar", false);
  }
  
  private fa c(Activity paramActivity)
  {
    try
    {
      c localc = d.a(paramActivity);
      paramActivity = fa.a.a(((fb)zzaB(paramActivity)).a(localc));
      return paramActivity;
    }
    catch (RemoteException paramActivity)
    {
      gz.d("Could not create remote InAppPurchaseManager.", paramActivity);
      return null;
    }
    catch (zzg.zza paramActivity)
    {
      gz.d("Could not create remote InAppPurchaseManager.", paramActivity);
    }
    return null;
  }
  
  protected fb a(IBinder paramIBinder)
  {
    return fb.a.a(paramIBinder);
  }
  
  private static final class zza
    extends Exception
  {
    public zza(String paramString)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */