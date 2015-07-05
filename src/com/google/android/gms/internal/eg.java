package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;

@ey
public final class eg
  extends eq.a
  implements ServiceConnection
{
  private Context mContext;
  private eb sF;
  private String sM;
  private ef sQ;
  private boolean sW = false;
  private int sX;
  private Intent sY;
  
  public eg(Context paramContext, String paramString, boolean paramBoolean, int paramInt, Intent paramIntent, ef paramef)
  {
    sM = paramString;
    sX = paramInt;
    sY = paramIntent;
    sW = paramBoolean;
    mContext = paramContext;
    sQ = paramef;
  }
  
  public void finishPurchase()
  {
    int i = ei.d(sY);
    if ((sX != -1) || (i != 0)) {
      return;
    }
    sF = new eb(mContext);
    Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
    localIntent.setPackage("com.android.vending");
    mContext.bindService(localIntent, this, 1);
  }
  
  public String getProductId()
  {
    return sM;
  }
  
  public Intent getPurchaseData()
  {
    return sY;
  }
  
  public int getResultCode()
  {
    return sX;
  }
  
  public boolean isVerified()
  {
    return sW;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    gr.U("In-app billing service connected.");
    sF.t(paramIBinder);
    paramComponentName = ei.E(ei.e(sY));
    if (paramComponentName == null) {
      return;
    }
    if (sF.c(mContext.getPackageName(), paramComponentName) == 0) {
      eh.j(mContext).a(sQ);
    }
    mContext.unbindService(this);
    sF.destroy();
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    gr.U("In-app billing service disconnected.");
    sF.destroy();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */