package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.fv;

@fv
public class n
  extends zzg<ad>
{
  public n()
  {
    super("com.google.android.gms.ads.AdManagerCreatorImpl");
  }
  
  private ac a(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dr paramdr, int paramInt)
  {
    try
    {
      c localc = d.a(paramContext);
      paramContext = ac.a.a(((ad)zzaB(paramContext)).a(localc, paramAdSizeParcel, paramString, paramdr, 8487000, paramInt));
      return paramContext;
    }
    catch (zzg.zza paramContext)
    {
      b.a("Could not create remote AdManager.", paramContext);
      return null;
    }
    catch (RemoteException paramContext)
    {
      for (;;) {}
    }
  }
  
  public ac a(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dr paramdr)
  {
    Object localObject;
    if (v.a().b(paramContext))
    {
      ac localac = a(paramContext, paramAdSizeParcel, paramString, paramdr, 1);
      localObject = localac;
      if (localac != null) {}
    }
    else
    {
      b.a("Using BannerAdManager from the client jar.");
      localObject = new VersionInfoParcel(8487000, 8487000, true);
      localObject = v.c().a(paramContext, paramAdSizeParcel, paramString, paramdr, (VersionInfoParcel)localObject);
    }
    return (ac)localObject;
  }
  
  protected ad a(IBinder paramIBinder)
  {
    return ad.a.a(paramIBinder);
  }
  
  public ac b(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dr paramdr)
  {
    Object localObject;
    if (v.a().b(paramContext))
    {
      ac localac = a(paramContext, paramAdSizeParcel, paramString, paramdr, 2);
      localObject = localac;
      if (localac != null) {}
    }
    else
    {
      b.d("Using InterstitialAdManager from the client jar.");
      localObject = new VersionInfoParcel(8487000, 8487000, true);
      localObject = v.c().b(paramContext, paramAdSizeParcel, paramString, paramdr, (VersionInfoParcel)localObject);
    }
    return (ac)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */