package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@ey
public class ec
  extends gf
  implements ServiceConnection
{
  private Context mContext;
  private final Object mH = new Object();
  private boolean sD = false;
  private er sE;
  private eb sF;
  private eh sG;
  private List<ef> sH = null;
  private ek sI;
  
  public ec(Context paramContext, er paramer, ek paramek)
  {
    mContext = paramContext;
    sE = paramer;
    sI = paramek;
    sF = new eb(paramContext);
    sG = eh.j(mContext);
    sH = sG.d(10L);
  }
  
  private void a(ef paramef, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("RESPONSE_CODE", 0);
    localIntent.putExtra("INAPP_PURCHASE_DATA", paramString1);
    localIntent.putExtra("INAPP_DATA_SIGNATURE", paramString2);
    gq.wR.post(new ec.1(this, paramef, localIntent));
  }
  
  private void b(long paramLong)
  {
    do
    {
      if (!c(paramLong)) {
        gr.W("Timeout waiting for pending transaction to be processed.");
      }
    } while (!sD);
  }
  
  private boolean c(long paramLong)
  {
    paramLong = 60000L - (SystemClock.elapsedRealtime() - paramLong);
    if (paramLong <= 0L) {
      return false;
    }
    try
    {
      mH.wait(paramLong);
      return true;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        gr.W("waitWithTimeout_lock interrupted");
      }
    }
  }
  
  private void cy()
  {
    if (sH.isEmpty()) {
      return;
    }
    HashMap localHashMap = new HashMap();
    Object localObject1 = sH.iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (ef)((Iterator)localObject1).next();
      localHashMap.put(sV, localObject2);
    }
    localObject1 = null;
    for (;;)
    {
      localObject1 = sF.d(mContext.getPackageName(), (String)localObject1);
      if (localObject1 == null) {}
      do
      {
        do
        {
          localObject1 = localHashMap.keySet().iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (String)((Iterator)localObject1).next();
            sG.a((ef)localHashMap.get(localObject2));
          }
          break;
        } while (ei.b((Bundle)localObject1) != 0);
        localObject2 = ((Bundle)localObject1).getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
        ArrayList localArrayList1 = ((Bundle)localObject1).getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList localArrayList2 = ((Bundle)localObject1).getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        localObject1 = ((Bundle)localObject1).getString("INAPP_CONTINUATION_TOKEN");
        int i = 0;
        while (i < ((ArrayList)localObject2).size())
        {
          if (localHashMap.containsKey(((ArrayList)localObject2).get(i)))
          {
            String str1 = (String)((ArrayList)localObject2).get(i);
            String str2 = (String)localArrayList1.get(i);
            String str3 = (String)localArrayList2.get(i);
            ef localef = (ef)localHashMap.get(str1);
            String str4 = ei.D(str2);
            if (sU.equals(str4))
            {
              a(localef, str2, str3);
              localHashMap.remove(str1);
            }
          }
          i += 1;
        }
      } while ((localObject1 == null) || (localHashMap.isEmpty()));
    }
  }
  
  public void cx()
  {
    synchronized (mH)
    {
      Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
      localIntent.setPackage("com.android.vending");
      mContext.bindService(localIntent, this, 1);
      b(SystemClock.elapsedRealtime());
      mContext.unbindService(this);
      sF.destroy();
      return;
    }
  }
  
  public void onServiceConnected(ComponentName arg1, IBinder paramIBinder)
  {
    synchronized (mH)
    {
      sF.t(paramIBinder);
      cy();
      sD = true;
      mH.notify();
      return;
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    gr.U("In-app billing service disconnected.");
    sF.destroy();
  }
  
  public void onStop()
  {
    synchronized (mH)
    {
      mContext.unbindService(this);
      sF.destroy();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */