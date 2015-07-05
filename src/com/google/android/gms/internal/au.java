package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.g;
import com.google.android.gms.dynamic.g.a;

@ey
public final class au
  extends g<be>
{
  private static final au oc = new au();
  
  private au()
  {
    super("com.google.android.gms.ads.AdManagerCreatorImpl");
  }
  
  public static bd a(Context paramContext, ay paramay, String paramString, cx paramcx)
  {
    Object localObject;
    if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramContext) == 0)
    {
      bd localbd = oc.b(paramContext, paramay, paramString, paramcx);
      localObject = localbd;
      if (localbd != null) {}
    }
    else
    {
      gr.S("Using AdManager from the client jar.");
      localObject = new u(paramContext, paramay, paramString, paramcx, new gs(6587000, 6587000, true));
    }
    return (bd)localObject;
  }
  
  private bd b(Context paramContext, ay paramay, String paramString, cx paramcx)
  {
    try
    {
      d locald = e.k(paramContext);
      paramContext = bd.a.f(((be)L(paramContext)).a(locald, paramay, paramString, paramcx, 6587000));
      return paramContext;
    }
    catch (RemoteException paramContext)
    {
      gr.d("Could not create remote AdManager.", paramContext);
      return null;
    }
    catch (g.a paramContext)
    {
      gr.d("Could not create remote AdManager.", paramContext);
    }
    return null;
  }
  
  protected be c(IBinder paramIBinder)
  {
    return be.a.g(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */