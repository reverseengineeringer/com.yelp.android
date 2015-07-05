package com.google.android.gms.ads.purchase;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.eo;
import com.google.android.gms.internal.et;
import com.google.android.gms.internal.gr;

public final class InAppPurchaseActivity
  extends Activity
{
  public static final String CLASS_NAME = "com.google.android.gms.ads.purchase.InAppPurchaseActivity";
  public static final String SIMPLE_CLASS_NAME = "InAppPurchaseActivity";
  private eo xz;
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    try
    {
      if (xz != null) {
        xz.onActivityResult(paramInt1, paramInt2, paramIntent);
      }
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        gr.d("Could not forward onActivityResult to in-app purchase manager:", localRemoteException);
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    xz = et.e(this);
    if (xz == null)
    {
      gr.W("Could not create in-app purchase manager.");
      finish();
      return;
    }
    try
    {
      xz.onCreate();
      return;
    }
    catch (RemoteException paramBundle)
    {
      gr.d("Could not forward onCreate to in-app purchase manager:", paramBundle);
      finish();
    }
  }
  
  protected void onDestroy()
  {
    try
    {
      if (xz != null) {
        xz.onDestroy();
      }
      super.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        gr.d("Could not forward onDestroy to in-app purchase manager:", localRemoteException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.purchase.InAppPurchaseActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */