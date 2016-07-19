package com.google.android.gms.internal;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Set;

class ex$1$1
  extends WebViewClient
{
  ex$1$1(ex.1 param1, WebView paramWebView) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    gz.a("Loading assets have finished");
    b.c.a.remove(a);
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    gz.d("Loading assets have failed.");
    b.c.a.remove(a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ex.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */