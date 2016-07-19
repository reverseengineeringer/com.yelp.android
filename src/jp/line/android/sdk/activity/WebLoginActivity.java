package jp.line.android.sdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.yelp.android.cz.d;
import com.yelp.android.db.f;
import com.yelp.android.db.i;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Locale;
import jp.line.android.sdk.c;
import jp.line.android.sdk.exception.LineSdkLoginError;
import jp.line.android.sdk.exception.LineSdkLoginException;
import jp.line.android.sdk.login.LineLoginFuture;

public class WebLoginActivity
  extends Activity
{
  private long a;
  private WebView b;
  
  private static String a(String paramString)
  {
    if (paramString == null) {
      return "";
    }
    try
    {
      String str = URLEncoder.encode(paramString, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return paramString;
  }
  
  public static final void a(Activity paramActivity, LineLoginFuture paramLineLoginFuture)
  {
    if ((paramActivity == null) || (paramLineLoginFuture == null)) {
      return;
    }
    Intent localIntent = new Intent(paramActivity, c.a().i());
    localIntent.putExtra("futureKey", paramLineLoginFuture.b());
    paramActivity.startActivity(localIntent);
  }
  
  static void a(i parami)
  {
    d locald = a.a();
    if (locald != null) {
      locald.a(parami);
    }
  }
  
  private final d b()
  {
    d locald = a.a();
    if (locald != null)
    {
      if (locald.b() == a) {
        return locald;
      }
      long l = a;
      locald.b();
    }
    return null;
  }
  
  final void a()
  {
    d locald = b();
    if (locald != null) {
      locald.h();
    }
  }
  
  final void a(Throwable paramThrowable)
  {
    d locald = b();
    if (locald != null) {
      locald.a(paramThrowable);
    }
  }
  
  public void onBackPressed()
  {
    a();
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = new WebView(this);
    b.setScrollBarStyle(0);
    b.setWebViewClient(new a());
    b.getSettings().setJavaScriptEnabled(true);
    b.getSettings().setUseWideViewPort(true);
    b.getSettings().setSupportZoom(true);
    paramBundle = new LinearLayout(this);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    if (Build.VERSION.SDK_INT >= 14) {
      paramBundle.setFitsSystemWindows(true);
    }
    paramBundle.addView(b, localLayoutParams);
    setContentView(paramBundle, localLayoutParams);
    paramBundle = getIntent();
    if (paramBundle != null)
    {
      a = paramBundle.getLongExtra("futureKey", -1L);
      return;
    }
    a = -1L;
  }
  
  protected void onResume()
  {
    super.onResume();
    Object localObject1 = b();
    if ((a <= 0L) || (localObject1 == null))
    {
      finish();
      return;
    }
    Locale localLocale = getResourcesgetConfigurationlocale;
    String str = localLocale.getCountry();
    int i = getResourcesgetConfigurationmcc;
    localObject1 = ea;
    int j = c.a().d();
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = localStringBuilder1.append(c.a().f()).append("/dialog/oauth/login?channelId=").append(j).append("&otpId=").append(a((String)localObject1)).append("&lang=");
    if (localLocale == null) {}
    Object localObject3;
    for (localObject1 = "";; localObject1 = "")
    {
      localStringBuilder2.append((String)localObject1).append("&country=").append(str).append("&mcc=").append(i);
      localObject1 = localStringBuilder1.toString();
      b.loadUrl((String)localObject1);
      return;
      localObject3 = localLocale.getLanguage();
      if (localObject3 != null) {
        break;
      }
    }
    localObject1 = null;
    Object localObject2 = localObject3;
    if ("in".equals(localObject3)) {
      localObject2 = "id";
    }
    if ("zh".equals(localObject2))
    {
      localObject1 = localLocale.getCountry();
      if ((localObject1 != null) && (!Locale.SIMPLIFIED_CHINESE.getCountry().equals(localObject1))) {
        break label293;
      }
    }
    label293:
    for (localObject1 = "Hans";; localObject1 = "Hant")
    {
      localObject3 = new StringBuilder(10);
      ((StringBuilder)localObject3).append((String)localObject2);
      if (localObject1 != null) {
        ((StringBuilder)localObject3).append('-').append((String)localObject1);
      }
      localObject1 = ((StringBuilder)localObject3).toString();
      break;
    }
  }
  
  final class a
    extends WebViewClient
  {
    a() {}
    
    public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      paramWebView = null;
      if (paramString.startsWith("market://"))
      {
        paramWebView = new Intent("android.intent.action.VIEW");
        paramWebView.setData(Uri.parse(paramString));
        paramWebView.addFlags(268435456);
        if (!getPackageManager().queryIntentActivities(paramWebView, 65536).isEmpty()) {
          startActivity(paramWebView);
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
              paramWebView = WebLoginActivity.this;
              WebLoginActivity.a(null);
              return true;
            }
            finally
            {
              finish();
            }
            a(paramWebView);
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
          paramString = WebLoginActivity.this;
          WebLoginActivity.a(paramWebView);
          return true;
        }
        finally
        {
          finish();
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
          a(paramString);
        } else if (i == 417) {
          a();
        } else {
          a(new LineSdkLoginException(LineSdkLoginError.FAILED_WEB_LOGIN, i));
        }
      }
      for (;;)
      {
        try
        {
          paramString = WebLoginActivity.this;
          WebLoginActivity.a(null);
          throw paramWebView;
        }
        finally
        {
          finish();
        }
        if (0 != 0) {
          a(null);
        } else {
          a(new LineSdkLoginException(LineSdkLoginError.FAILED_WEB_LOGIN, -1));
        }
      }
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     jp.line.android.sdk.activity.WebLoginActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */