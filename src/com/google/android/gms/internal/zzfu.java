package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.t;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;

@fv
public final class zzfu
  extends zzg<er>
{
  private static final zzfu a = new zzfu();
  
  private zzfu()
  {
    super("com.google.android.gms.ads.AdOverlayCreatorImpl");
  }
  
  public static eq a(Activity paramActivity)
  {
    try
    {
      eq localeq1;
      if (!b(paramActivity))
      {
        eq localeq2 = a.c(paramActivity);
        localeq1 = localeq2;
        if (localeq2 != null) {}
      }
      else
      {
        b.a("Using AdOverlay from the client jar.");
        localeq1 = v.c().b(paramActivity);
      }
      return localeq1;
    }
    catch (zza paramActivity)
    {
      b.d(paramActivity.getMessage());
    }
    return null;
  }
  
  private static boolean b(Activity paramActivity)
    throws zzfu.zza
  {
    paramActivity = paramActivity.getIntent();
    if (!paramActivity.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
      throw new zza("Ad overlay requires the useClientJar flag in intent extras.");
    }
    return paramActivity.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
  }
  
  private eq c(Activity paramActivity)
  {
    try
    {
      c localc = d.a(paramActivity);
      paramActivity = eq.a.a(((er)zzaB(paramActivity)).a(localc));
      return paramActivity;
    }
    catch (RemoteException paramActivity)
    {
      b.d("Could not create remote AdOverlay.", paramActivity);
      return null;
    }
    catch (zzg.zza paramActivity)
    {
      b.d("Could not create remote AdOverlay.", paramActivity);
    }
    return null;
  }
  
  protected er a(IBinder paramIBinder)
  {
    return er.a.a(paramIBinder);
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
 * Qualified Name:     com.google.android.gms.internal.zzfu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */