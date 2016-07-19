package com.facebook.internal;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;

class w$b
  extends WebViewClient
{
  private w$b(w paramw) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    if (!w.b(a)) {
      w.c(a).dismiss();
    }
    w.d(a).setBackgroundColor(0);
    w.e(a).setVisibility(0);
    w.f(a).setVisibility(0);
    w.a(a, true);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    u.b("FacebookSDK.WebDialog", "Webview loading URL: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    if (!w.b(a)) {
      w.c(a).show();
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    a.a(new FacebookDialogException(paramString1, paramInt, paramString2));
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
    paramSslErrorHandler.cancel();
    a.a(new FacebookDialogException(null, -11, null));
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    u.b("FacebookSDK.WebDialog", "Redirect URL: " + paramString);
    Bundle localBundle;
    Object localObject;
    if (paramString.startsWith(w.a(a)))
    {
      localBundle = a.a(paramString);
      paramWebView = localBundle.getString("error");
      paramString = paramWebView;
      if (paramWebView == null) {
        paramString = localBundle.getString("error_type");
      }
      localObject = localBundle.getString("error_msg");
      paramWebView = (WebView)localObject;
      if (localObject == null) {
        paramWebView = localBundle.getString("error_message");
      }
      localObject = paramWebView;
      if (paramWebView == null) {
        localObject = localBundle.getString("error_description");
      }
      paramWebView = localBundle.getString("error_code");
      if (u.a(paramWebView)) {
        break label303;
      }
    }
    for (;;)
    {
      try
      {
        i = Integer.parseInt(paramWebView);
        if ((u.a(paramString)) && (u.a((String)localObject)) && (i == -1))
        {
          a.a(localBundle);
          return true;
        }
      }
      catch (NumberFormatException paramWebView)
      {
        i = -1;
        continue;
        if ((paramString != null) && ((paramString.equals("access_denied")) || (paramString.equals("OAuthAccessDeniedException"))))
        {
          a.cancel();
          continue;
        }
        if (i == 4201)
        {
          a.cancel();
          continue;
        }
        paramWebView = new FacebookRequestError(i, paramString, (String)localObject);
        a.a(new FacebookServiceException(paramWebView, (String)localObject));
        continue;
      }
      if (paramString.startsWith("fbconnect://cancel"))
      {
        a.cancel();
        return true;
      }
      if (paramString.contains("touch")) {
        return false;
      }
      a.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
      return true;
      label303:
      int i = -1;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.w.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */