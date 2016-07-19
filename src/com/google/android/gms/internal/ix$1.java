package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;

class ix$1
  implements Runnable
{
  ix$1(ix paramix) {}
  
  public void run()
  {
    synchronized (ix.a(a))
    {
      if ((ix.b(a) <= ix.c(a).b()) && (ix.d(a) != null))
      {
        Log.i("ClearcutLoggerApiImpl", "disconnect managed GoogleApiClient");
        ix.d(a).disconnect();
        ix.a(a, null);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ix.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */