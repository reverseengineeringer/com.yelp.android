package com.kahuna.sdk;

import android.util.Log;

class l$7
  implements Runnable
{
  l$7(l paraml) {}
  
  public void run()
  {
    if (!l.b(a)) {
      Log.e("Kahuna", "You need to call onAppCreate() before any other call to the SDK. Ignoring disablePush request");
    }
    while (!l.l(a)) {
      return;
    }
    l.a(a, false);
    s.a(l.l(a), l.a(a));
    l.a(a, new Event("k_push_disabled"));
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.l.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */