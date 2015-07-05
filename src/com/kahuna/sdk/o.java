package com.kahuna.sdk;

import android.util.Log;

final class o
  implements Runnable
{
  public void run()
  {
    h localh = h.a();
    if (!h.b(localh)) {
      Log.e("KahunaAnalytics", "You need to call onAppCreate() before any other call to the SDK. Ignoring disablePush request");
    }
    while (!h.m(localh)) {
      return;
    }
    h.a(localh, false);
    ag.a(h.m(localh), h.a(h.a()));
    h.a(localh, new Event("k_push_disabled", System.currentTimeMillis() / 1000L, null, null, null, null));
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */