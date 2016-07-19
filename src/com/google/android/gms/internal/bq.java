package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.t;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;

@fv
public class bq
  extends zzg<bg>
{
  public bq()
  {
    super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
  }
  
  private bf b(Context paramContext, FrameLayout paramFrameLayout1, FrameLayout paramFrameLayout2)
  {
    try
    {
      c localc = d.a(paramContext);
      paramFrameLayout1 = d.a(paramFrameLayout1);
      paramFrameLayout2 = d.a(paramFrameLayout2);
      paramContext = bf.a.a(((bg)zzaB(paramContext)).a(localc, paramFrameLayout1, paramFrameLayout2, 8487000));
      return paramContext;
    }
    catch (zzg.zza paramContext)
    {
      b.d("Could not create remote NativeAdViewDelegate.", paramContext);
      return null;
    }
    catch (RemoteException paramContext)
    {
      for (;;) {}
    }
  }
  
  public bf a(Context paramContext, FrameLayout paramFrameLayout1, FrameLayout paramFrameLayout2)
  {
    if (v.a().b(paramContext))
    {
      bf localbf = b(paramContext, paramFrameLayout1, paramFrameLayout2);
      paramContext = localbf;
      if (localbf != null) {}
    }
    else
    {
      b.a("Using NativeAdViewDelegate from the client jar.");
      paramContext = v.c().a(paramFrameLayout1, paramFrameLayout2);
    }
    return paramContext;
  }
  
  protected bg a(IBinder paramIBinder)
  {
    return bg.a.a(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */