package com.google.android.gms.internal;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Set;

class ex$1
  implements Runnable
{
  ex$1(ex paramex, String paramString1, String paramString2) {}
  
  public void run()
  {
    final WebView localWebView = c.a();
    localWebView.setWebViewClient(new WebViewClient()
    {
      public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        gz.a("Loading assets have finished");
        c.a.remove(localWebView);
      }
      
      public void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
      {
        gz.d("Loading assets have failed.");
        c.a.remove(localWebView);
      }
    });
    c.a.add(localWebView);
    localWebView.loadDataWithBaseURL(a, b, "text/html", "UTF-8", null);
    gz.a("Fetching assets finished.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ex.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */