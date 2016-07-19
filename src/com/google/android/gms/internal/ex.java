package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@fv
public class ex
  implements eu
{
  final Set<WebView> a = Collections.synchronizedSet(new HashSet());
  private final Context b;
  
  public ex(Context paramContext)
  {
    b = paramContext;
  }
  
  public WebView a()
  {
    WebView localWebView = new WebView(b);
    localWebView.getSettings().setJavaScriptEnabled(true);
    return localWebView;
  }
  
  public void a(String paramString1, final String paramString2, final String paramString3)
  {
    gz.a("Fetching assets for the given html");
    hd.a.post(new Runnable()
    {
      public void run()
      {
        final WebView localWebView = a();
        localWebView.setWebViewClient(new WebViewClient()
        {
          public void onPageFinished(WebView paramAnonymous2WebView, String paramAnonymous2String)
          {
            gz.a("Loading assets have finished");
            a.remove(localWebView);
          }
          
          public void onReceivedError(WebView paramAnonymous2WebView, int paramAnonymous2Int, String paramAnonymous2String1, String paramAnonymous2String2)
          {
            gz.d("Loading assets have failed.");
            a.remove(localWebView);
          }
        });
        a.add(localWebView);
        localWebView.loadDataWithBaseURL(paramString2, paramString3, "text/html", "UTF-8", null);
        gz.a("Fetching assets finished.");
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */