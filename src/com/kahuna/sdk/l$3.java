package com.kahuna.sdk;

import android.util.Log;

class l$3
  implements Runnable
{
  l$3(l paraml, String paramString, boolean paramBoolean, int paramInt1, int paramInt2) {}
  
  public void run()
  {
    try
    {
      d locald = new d(a);
      if (b) {
        locald.a(c, d);
      }
      l.a(e, locald.a());
      return;
    }
    catch (Exception localException)
    {
      Log.d("Kahuna", "Handled exception in KahunaCommon.trackEvent(): " + localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.l.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */