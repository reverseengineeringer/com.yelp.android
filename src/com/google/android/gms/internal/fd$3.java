package com.google.android.gms.internal;

class fd$3
  implements Runnable
{
  fd$3(fd paramfd) {}
  
  public void run()
  {
    for (;;)
    {
      synchronized (fd.a(tF))
      {
        if (ctF).errorCode != -2) {
          return;
        }
        fd.d(tF).dD().a(tF);
        if (ctF).errorCode == -3)
        {
          gr.V("Loading URL in WebView: " + ctF).sg);
          fd.d(tF).loadUrl(ctF).sg);
          return;
        }
      }
      gr.V("Loading HTML in WebView.");
      fd.d(tF).loadDataWithBaseURL(gi.L(ctF).sg), ctF).tU, "text/html", "UTF-8", null);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fd.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */