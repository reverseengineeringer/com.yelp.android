package com.google.android.gms.internal;

import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;

class an$2
  implements Runnable
{
  ValueCallback<String> nM = new an.2.1(this);
  
  an$2(an paraman, ak paramak, WebView paramWebView) {}
  
  public void run()
  {
    if (nO.getSettings().getJavaScriptEnabled()) {
      nO.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", nM);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.an.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */