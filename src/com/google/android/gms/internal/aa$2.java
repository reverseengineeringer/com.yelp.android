package com.google.android.gms.internal;

import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;

class aa$2
  implements Runnable
{
  ValueCallback<String> a = new ValueCallback()
  {
    public void a(String paramAnonymousString)
    {
      e.a(b, c, paramAnonymousString, d);
    }
  };
  
  aa$2(aa paramaa, x paramx, WebView paramWebView, boolean paramBoolean) {}
  
  public void run()
  {
    if (c.getSettings().getJavaScriptEnabled()) {}
    try
    {
      c.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", a);
      return;
    }
    catch (Throwable localThrowable)
    {
      a.onReceiveValue("");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.aa.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */