package com.google.android.gms.internal;

import java.util.concurrent.atomic.AtomicBoolean;

class fi$1
  implements Runnable
{
  fi$1(fi paramfi) {}
  
  public void run()
  {
    if (!fi.a(a).get()) {
      return;
    }
    gz.b("Timed out waiting for WebView to finish loading.");
    a.d();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fi.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */