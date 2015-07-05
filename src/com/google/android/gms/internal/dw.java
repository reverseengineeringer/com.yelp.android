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
public final class dw
  extends g<dy>
{
  private static final dw sy = new dw();
  
  private dw()
  {
    super("com.google.android.gms.ads.AdOverlayCreatorImpl");
  }
  
  public static dx b(Activity paramActivity)
  {
    try
    {
      if (c(paramActivity))
      {
        gr.S("Using AdOverlay from the client jar.");
        return new dp(paramActivity);
      }
      paramActivity = sy.d(paramActivity);
      return paramActivity;
    }
    catch (dw.a paramActivity)
    {
      gr.W(paramActivity.getMessage());
    }
    return null;
  }
  
  private static boolean c(Activity paramActivity)
  {
    paramActivity = paramActivity.getIntent();
    if (!paramActivity.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
      throw new dw.a("Ad overlay requires the useClientJar flag in intent extras.");
    }
    return paramActivity.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
  }
  
  private dx d(Activity paramActivity)
  {
    try
    {
      d locald = e.k(paramActivity);
      paramActivity = dx.a.r(((dy)L(paramActivity)).b(locald));
      return paramActivity;
    }
    catch (RemoteException paramActivity)
    {
      gr.d("Could not create remote AdOverlay.", paramActivity);
      return null;
    }
    catch (g.a paramActivity)
    {
      gr.d("Could not create remote AdOverlay.", paramActivity);
    }
    return null;
  }
  
  protected dy q(IBinder paramIBinder)
  {
    return dy.a.s(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */