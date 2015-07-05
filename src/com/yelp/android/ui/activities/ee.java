package com.yelp.android.ui.activities;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class ee
  extends WebViewClient
{
  ee(ActivityTwitterSignIn paramActivityTwitterSignIn) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    a.hideLoadingDialog();
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    a.showLoadingDialog(2131166754);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.contains("yelp:///twitter_oauth"))
    {
      a.showLoadingDialog(2131166754);
      ActivityTwitterSignIn.a(a).setVisibility(8);
      paramWebView = Uri.parse(paramString);
      if (!TextUtils.equals(paramWebView.getQueryParameter("oauth_token"), ActivityTwitterSignIn.b(a))) {
        a.showYesNoDialog(2131165763, 2131166464, 2131165457, 2);
      }
      ActivityTwitterSignIn.a(a, paramWebView.getQueryParameter("oauth_verifier"));
      ActivityTwitterSignIn.c(a);
      return true;
    }
    if (paramString.contains("https://api.twitter.com/oauth")) {
      return false;
    }
    a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */