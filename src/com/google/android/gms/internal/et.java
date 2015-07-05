package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.g;
import com.google.android.gms.dynamic.g.a;

@ey
public final class et
  extends g<ep>
{
  private static final et td = new et();
  
  private et()
  {
    super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
  }
  
  private static boolean c(Activity paramActivity)
  {
    paramActivity = paramActivity.getIntent();
    if (!paramActivity.hasExtra("com.google.android.gms.ads.internal.purchase.useClientJar")) {
      throw new et.a("InAppPurchaseManager requires the useClientJar flag in intent extras.");
    }
    return paramActivity.getBooleanExtra("com.google.android.gms.ads.internal.purchase.useClientJar", false);
  }
  
  public static eo e(Activity paramActivity)
  {
    try
    {
      if (c(paramActivity))
      {
        gr.S("Using AdOverlay from the client jar.");
        return new ee(paramActivity);
      }
      paramActivity = td.f(paramActivity);
      return paramActivity;
    }
    catch (et.a paramActivity)
    {
      gr.W(paramActivity.getMessage());
    }
    return null;
  }
  
  private eo f(Activity paramActivity)
  {
    try
    {
      d locald = e.k(paramActivity);
      paramActivity = eo.a.w(((ep)L(paramActivity)).c(locald));
      return paramActivity;
    }
    catch (RemoteException paramActivity)
    {
      gr.d("Could not create remote InAppPurchaseManager.", paramActivity);
      return null;
    }
    catch (g.a paramActivity)
    {
      gr.d("Could not create remote InAppPurchaseManager.", paramActivity);
    }
    return null;
  }
  
  protected ep A(IBinder paramIBinder)
  {
    return ep.a.x(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.et
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */