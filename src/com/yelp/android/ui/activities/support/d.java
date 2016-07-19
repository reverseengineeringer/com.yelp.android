package com.yelp.android.ui.activities.support;

import android.annotation.SuppressLint;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import com.yelp.android.appdata.f;

public class d
{
  @SuppressLint({"NewApi", "InlinedApi"})
  public static void a(WebView paramWebView)
  {
    paramWebView.getSettings().setAllowContentAccess(false);
    paramWebView.getSettings().setAllowFileAccess(false);
    if (f.a(16))
    {
      paramWebView.getSettings().setAllowFileAccessFromFileURLs(false);
      paramWebView.getSettings().setAllowUniversalAccessFromFileURLs(false);
    }
    if (f.a(21)) {
      paramWebView.getSettings().setMixedContentMode(1);
    }
    paramWebView.getSettings().setSaveFormData(false);
    paramWebView.getSettings().setSavePassword(false);
    paramWebView.getSettings().setPluginState(WebSettings.PluginState.OFF);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */