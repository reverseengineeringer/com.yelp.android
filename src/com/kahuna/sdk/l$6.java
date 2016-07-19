package com.kahuna.sdk;

import android.util.Log;

class l$6
  implements Runnable
{
  l$6(l paraml) {}
  
  public void run()
  {
    if (!l.b(a)) {
      Log.e("Kahuna", "You need to call onAppCreate() before any other call to the SDK. Ignoring enablePush request");
    }
    while (l.l(a) == true) {
      return;
    }
    l.a(a, true);
    s.a(l.l(a), l.a(a));
    l.a(a, new Event("k_push_enabled"));
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.l.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */