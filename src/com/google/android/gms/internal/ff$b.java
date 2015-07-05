package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

@ey
public final class ff$b
  extends ff
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{
  private final Object mH = new Object();
  private final fe.a tI;
  private final fg tJ;
  
  public ff$b(Context paramContext, fh paramfh, fe.a parama)
  {
    super(paramfh, parama);
    tI = parama;
    tJ = new fg(paramContext, this, this, lO.wU);
    tJ.connect();
  }
  
  public void cJ()
  {
    synchronized (mH)
    {
      if ((tJ.isConnected()) || (tJ.isConnecting())) {
        tJ.disconnect();
      }
      return;
    }
  }
  
  /* Error */
  public fl cK()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 27	com/google/android/gms/internal/ff$b:mH	Ljava/lang/Object;
    //   4: astore_1
    //   5: aload_1
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 48	com/google/android/gms/internal/ff$b:tJ	Lcom/google/android/gms/internal/fg;
    //   11: invokevirtual 72	com/google/android/gms/internal/fg:cL	()Lcom/google/android/gms/internal/fl;
    //   14: astore_2
    //   15: aload_1
    //   16: monitorexit
    //   17: aload_2
    //   18: areturn
    //   19: aload_1
    //   20: monitorexit
    //   21: aconst_null
    //   22: areturn
    //   23: astore_2
    //   24: aload_1
    //   25: monitorexit
    //   26: aload_2
    //   27: athrow
    //   28: astore_2
    //   29: goto -10 -> 19
    //   32: astore_2
    //   33: goto -14 -> 19
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	b
    //   14	4	2	localfl	fl
    //   23	4	2	localObject2	Object
    //   28	1	2	localDeadObjectException	android.os.DeadObjectException
    //   32	1	2	localIllegalStateException	IllegalStateException
    // Exception table:
    //   from	to	target	type
    //   7	15	23	finally
    //   15	17	23	finally
    //   19	21	23	finally
    //   24	26	23	finally
    //   7	15	28	android/os/DeadObjectException
    //   7	15	32	java/lang/IllegalStateException
  }
  
  public void onConnected(Bundle paramBundle)
  {
    start();
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    tI.a(new fj(0));
  }
  
  public void onConnectionSuspended(int paramInt)
  {
    gr.S("Disconnected from remote ad request service.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ff.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */