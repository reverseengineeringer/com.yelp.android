package com.google.android.gms.internal;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;

@ey
public class ee
  extends eo.a
  implements ServiceConnection
{
  private final Activity nB;
  private eb sF;
  private final eh sG;
  private ek sI;
  private Context sO;
  private em sP;
  private ef sQ;
  private ej sR;
  private String sS = null;
  
  public ee(Activity paramActivity)
  {
    nB = paramActivity;
    sG = eh.j(nB.getApplicationContext());
  }
  
  public static void a(Context paramContext, boolean paramBoolean, ea paramea)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName(paramContext, "com.google.android.gms.ads.purchase.InAppPurchaseActivity");
    localIntent.putExtra("com.google.android.gms.ads.internal.purchase.useClientJar", paramBoolean);
    ea.a(localIntent, paramea);
    paramContext.startActivity(localIntent);
  }
  
  private void a(String paramString, boolean paramBoolean, int paramInt, Intent paramIntent)
  {
    if (sR != null) {
      sR.a(paramString, paramBoolean, paramInt, paramIntent, sQ);
    }
  }
  
  /* Error */
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    // Byte code:
    //   0: iload_1
    //   1: sipush 1001
    //   4: if_icmpne +78 -> 82
    //   7: iconst_0
    //   8: istore 4
    //   10: aload_3
    //   11: invokestatic 97	com/google/android/gms/internal/ei:d	(Landroid/content/Intent;)I
    //   14: istore_1
    //   15: iload_2
    //   16: iconst_m1
    //   17: if_icmpne +66 -> 83
    //   20: iload_1
    //   21: ifne +62 -> 83
    //   24: aload_0
    //   25: getfield 99	com/google/android/gms/internal/ee:sI	Lcom/google/android/gms/internal/ek;
    //   28: aload_0
    //   29: getfield 32	com/google/android/gms/internal/ee:sS	Ljava/lang/String;
    //   32: iload_2
    //   33: aload_3
    //   34: invokevirtual 104	com/google/android/gms/internal/ek:a	(Ljava/lang/String;ILandroid/content/Intent;)Z
    //   37: ifeq +6 -> 43
    //   40: iconst_1
    //   41: istore 4
    //   43: aload_0
    //   44: getfield 106	com/google/android/gms/internal/ee:sP	Lcom/google/android/gms/internal/em;
    //   47: iload_1
    //   48: invokeinterface 112 2 0
    //   53: aload_0
    //   54: getfield 34	com/google/android/gms/internal/ee:nB	Landroid/app/Activity;
    //   57: invokevirtual 115	android/app/Activity:finish	()V
    //   60: aload_0
    //   61: aload_0
    //   62: getfield 106	com/google/android/gms/internal/ee:sP	Lcom/google/android/gms/internal/em;
    //   65: invokeinterface 119 1 0
    //   70: iload 4
    //   72: iload_2
    //   73: aload_3
    //   74: invokespecial 121	com/google/android/gms/internal/ee:a	(Ljava/lang/String;ZILandroid/content/Intent;)V
    //   77: aload_0
    //   78: aconst_null
    //   79: putfield 32	com/google/android/gms/internal/ee:sS	Ljava/lang/String;
    //   82: return
    //   83: aload_0
    //   84: getfield 48	com/google/android/gms/internal/ee:sG	Lcom/google/android/gms/internal/eh;
    //   87: aload_0
    //   88: getfield 82	com/google/android/gms/internal/ee:sQ	Lcom/google/android/gms/internal/ef;
    //   91: invokevirtual 124	com/google/android/gms/internal/eh:a	(Lcom/google/android/gms/internal/ef;)V
    //   94: goto -51 -> 43
    //   97: astore_3
    //   98: ldc 126
    //   100: invokestatic 132	com/google/android/gms/internal/gr:W	(Ljava/lang/String;)V
    //   103: aload_0
    //   104: getfield 34	com/google/android/gms/internal/ee:nB	Landroid/app/Activity;
    //   107: invokevirtual 115	android/app/Activity:finish	()V
    //   110: aload_0
    //   111: aconst_null
    //   112: putfield 32	com/google/android/gms/internal/ee:sS	Ljava/lang/String;
    //   115: return
    //   116: astore_3
    //   117: aload_0
    //   118: aconst_null
    //   119: putfield 32	com/google/android/gms/internal/ee:sS	Ljava/lang/String;
    //   122: aload_3
    //   123: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	124	0	this	ee
    //   0	124	1	paramInt1	int
    //   0	124	2	paramInt2	int
    //   0	124	3	paramIntent	Intent
    //   8	63	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   10	15	97	android/os/RemoteException
    //   24	40	97	android/os/RemoteException
    //   43	77	97	android/os/RemoteException
    //   83	94	97	android/os/RemoteException
    //   10	15	116	finally
    //   24	40	116	finally
    //   43	77	116	finally
    //   83	94	116	finally
    //   98	110	116	finally
  }
  
  public void onCreate()
  {
    Object localObject = ea.c(nB.getIntent());
    sR = sB;
    sI = md;
    sP = sz;
    sF = new eb(nB.getApplicationContext());
    sO = sA;
    if (nB.getResources().getConfiguration().orientation == 2) {
      nB.setRequestedOrientation(6);
    }
    for (;;)
    {
      localObject = new Intent("com.android.vending.billing.InAppBillingService.BIND");
      ((Intent)localObject).setPackage("com.android.vending");
      nB.bindService((Intent)localObject, this, 1);
      return;
      nB.setRequestedOrientation(7);
    }
  }
  
  public void onDestroy()
  {
    nB.unbindService(this);
    sF.destroy();
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    sF.t(paramIBinder);
    try
    {
      sS = sI.cC();
      paramComponentName = sF.a(nB.getPackageName(), sP.getProductId(), sS);
      paramIBinder = (PendingIntent)paramComponentName.getParcelable("BUY_INTENT");
      if (paramIBinder == null)
      {
        int i = ei.b(paramComponentName);
        sP.recordPlayBillingResolution(i);
        a(sP.getProductId(), false, i, null);
        nB.finish();
        return;
      }
      sQ = new ef(sP.getProductId(), sS);
      sG.b(sQ);
      nB.startIntentSenderForResult(paramIBinder.getIntentSender(), 1001, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
      return;
    }
    catch (RemoteException paramComponentName)
    {
      gr.d("Error when connecting in-app billing service", paramComponentName);
      nB.finish();
      return;
    }
    catch (IntentSender.SendIntentException paramComponentName)
    {
      for (;;) {}
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    gr.U("In-app billing service disconnected.");
    sF.destroy();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */