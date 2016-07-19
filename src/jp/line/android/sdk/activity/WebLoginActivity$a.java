package jp.line.android.sdk.activity;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.yelp.android.db.i;
import java.util.List;
import jp.line.android.sdk.exception.LineSdkLoginError;
import jp.line.android.sdk.exception.LineSdkLoginException;

final class WebLoginActivity$a
  extends WebViewClient
{
  WebLoginActivity$a(WebLoginActivity paramWebLoginActivity) {}
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView = null;
    if (paramString.startsWith("market://"))
    {
      paramWebView = new Intent("android.intent.action.VIEW");
      paramWebView.setData(Uri.parse(paramString));
      paramWebView.addFlags(268435456);
      if (!a.getPackageManager().queryIntentActivities(paramWebView, 65536).isEmpty()) {
        a.startActivity(paramWebView);
      }
      return true;
    }
    if (paramString.startsWith("lineconnect://"))
    {
      int i = -1;
      try
      {
        paramString = Uri.parse(paramString);
        localObject = paramString.getHost();
        if (((String)localObject).equalsIgnoreCase("success"))
        {
          localObject = paramString.getQueryParameter("requestToken");
          str = paramString.getQueryParameter("refreshToken");
          l1 = -1L;
        }
      }
      catch (Throwable paramWebView)
      {
        Object localObject;
        String str;
        long l1;
        long l2;
        label136:
        label276:
        if (0 != 0) {}
        for (;;)
        {
          try
          {
            paramWebView = a;
            WebLoginActivity.a(null);
            return true;
          }
          finally
          {
            a.finish();
          }
          a.a(paramWebView);
        }
      }
      finally
      {
        if (0 == 0) {}
      }
    }
    try
    {
      l2 = Long.parseLong(paramString.getQueryParameter("expire"));
      l1 = l2;
    }
    catch (Exception paramString)
    {
      break label136;
    }
    if ((localObject == null) || (((String)localObject).length() == 0))
    {
      paramString = new IllegalArgumentException("Illegal login result. Request Token is null.");
      paramWebView = null;
      if (paramWebView == null) {
        break label276;
      }
    }
    for (;;)
    {
      try
      {
        paramString = a;
        WebLoginActivity.a(paramWebView);
        return true;
      }
      finally
      {
        a.finish();
      }
      localObject = i.a((String)localObject, l1, str);
      paramString = paramWebView;
      paramWebView = (WebView)localObject;
      break;
      if (((String)localObject).equalsIgnoreCase("fail"))
      {
        paramString = paramString.getQueryParameter("errorCode");
        if ((paramString != null) && (paramString.length() > 0))
        {
          i = Integer.parseInt(paramString);
          localObject = null;
          paramString = paramWebView;
          paramWebView = (WebView)localObject;
          break;
        }
        paramString = new NullPointerException("error code is null.");
        paramWebView = null;
        break;
      }
      paramString = new IllegalArgumentException("Illegal login result.");
      paramWebView = null;
      break;
      if (paramString != null) {
        a.a(paramString);
      } else if (i == 417) {
        a.a();
      } else {
        a.a(new LineSdkLoginException(LineSdkLoginError.FAILED_WEB_LOGIN, i));
      }
    }
    for (;;)
    {
      try
      {
        paramString = a;
        WebLoginActivity.a(null);
        throw paramWebView;
      }
      finally
      {
        a.finish();
      }
      if (0 != 0) {
        a.a(null);
      } else {
        a.a(new LineSdkLoginException(LineSdkLoginError.FAILED_WEB_LOGIN, -1));
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     jp.line.android.sdk.activity.WebLoginActivity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */