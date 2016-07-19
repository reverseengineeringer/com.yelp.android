package com.kahuna.sdk.inapp;

import android.app.Dialog;
import android.util.Log;
import com.kahuna.sdk.l;

class c$2
  implements Runnable
{
  c$2(c paramc, boolean paramBoolean) {}
  
  public void run()
  {
    if (c.b(b) != null) {}
    try
    {
      c.b(b).setOnDismissListener(null);
      c.b(b).dismiss();
      c.a(b, null);
      if (a) {
        c.a(c.e(), null);
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        if (l.u()) {
          Log.e("Kahuna", "Caught exception dismissing In App Message dialog: " + localThrowable.getMessage());
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.inapp.c.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */