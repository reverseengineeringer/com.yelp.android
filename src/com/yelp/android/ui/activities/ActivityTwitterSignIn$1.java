package com.yelp.android.ui.activities;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class ActivityTwitterSignIn$1
  extends WebViewClient
{
  ActivityTwitterSignIn$1(ActivityTwitterSignIn paramActivityTwitterSignIn) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    a.hideLoadingDialog();
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    a.showLoadingDialog(2131166734);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.contains("yelp:///twitter_oauth"))
    {
      a.showLoadingDialog(2131166734);
      ActivityTwitterSignIn.a(a).setVisibility(8);
      paramWebView = Uri.parse(paramString);
      if (!TextUtils.equals(paramWebView.getQueryParameter("oauth_token"), ActivityTwitterSignIn.b(a))) {
        a.showYesNoDialog(2131165847, 2131166469, 2131165583, 2);
      }
      ActivityTwitterSignIn.a(a, paramWebView.getQueryParameter("oauth_verifier"));
      ActivityTwitterSignIn.c(a);
      return true;
    }
    if ((paramString.startsWith("https://api.twitter.com/oauth")) || (paramString.startsWith("https://api.twitter.com/account/login_verification")) || (paramString.startsWith("https://api.twitter.com/login/error"))) {
      return false;
    }
    a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityTwitterSignIn.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */