package com.kahuna.sdk;

import android.util.Log;

final class n
  implements Runnable
{
  public void run()
  {
    h localh = h.a();
    if (!h.b(localh)) {
      Log.e("KahunaAnalytics", "You need to call onAppCreate() before any other call to the SDK. Ignoring enablePush request");
    }
    while (h.m(localh) == true) {
      return;
    }
    h.a(localh, true);
    ag.a(h.m(localh), h.a(h.a()));
    h.a(localh, new Event("k_push_enabled", System.currentTimeMillis() / 1000L, null, null, null, null));
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */