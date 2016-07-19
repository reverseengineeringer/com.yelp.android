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
public final class m
  extends zzg<ab>
{
  private static final m a = new m();
  
  private m()
  {
    super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
  }
  
  public static aa a(Context paramContext, String paramString, dr paramdr)
  {
    Object localObject;
    if (v.a().b(paramContext))
    {
      aa localaa = a.b(paramContext, paramString, paramdr);
      localObject = localaa;
      if (localaa != null) {}
    }
    else
    {
      b.a("Using AdLoader from the client jar.");
      localObject = new VersionInfoParcel(8487000, 8487000, true);
      localObject = v.c().a(paramContext, paramString, paramdr, (VersionInfoParcel)localObject);
    }
    return (aa)localObject;
  }
  
  private aa b(Context paramContext, String paramString, dr paramdr)
  {
    try
    {
      c localc = d.a(paramContext);
      paramContext = aa.a.a(((ab)zzaB(paramContext)).a(localc, paramString, paramdr, 8487000));
      return paramContext;
    }
    catch (RemoteException paramContext)
    {
      b.d("Could not create remote builder for AdLoader.", paramContext);
      return null;
    }
    catch (zzg.zza paramContext)
    {
      for (;;)
      {
        b.d("Could not create remote builder for AdLoader.", paramContext);
      }
    }
  }
  
  protected ab a(IBinder paramIBinder)
  {
    return ab.a.a(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */