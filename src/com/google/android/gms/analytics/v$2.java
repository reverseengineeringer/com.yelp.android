package com.google.android.gms.analytics;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

class v$2
  implements Handler.Callback
{
  v$2(v paramv) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    if ((1 == what) && (v.ez().equals(obj)))
    {
      y.eK().D(true);
      zg.dispatchLocalHits();
      y.eK().D(false);
      if ((v.b(zg) > 0) && (!v.c(zg))) {
        v.d(zg).sendMessageDelayed(v.d(zg).obtainMessage(1, v.ez()), v.b(zg) * 1000);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.v.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */