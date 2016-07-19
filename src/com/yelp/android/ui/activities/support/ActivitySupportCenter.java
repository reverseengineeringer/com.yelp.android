package com.yelp.android.ui.activities.support;

import android.content.Context;
import android.content.Intent;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.debug.d;
import com.yelp.android.services.i;
import java.util.EnumSet;
import java.util.Locale;

public class ActivitySupportCenter
  extends WebViewActivity
{
  private WebViewClient a = new c(this)
  {
    public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
    {
      return false;
    }
  };
  
  public static Intent a(Context paramContext, Locale paramLocale)
  {
    String str = paramLocale.getCountry().toLowerCase(Locale.US);
    paramLocale = paramLocale.getLanguage().toLowerCase(Locale.US);
    StringBuilder localStringBuilder = new StringBuilder();
    if ((!paramLocale.isEmpty()) && (!str.isEmpty())) {
      localStringBuilder.append(paramLocale).append("-").append(str).append(".");
    }
    for (;;)
    {
      paramLocale = new Uri.Builder().scheme("https").path(localStringBuilder.toString() + i.c().a() + "/support/").build();
      return configureIntent(new Intent(paramContext, ActivitySupportCenter.class), paramContext, paramLocale, paramContext.getString(2131166635), ViewIri.SupportCenter, EnumSet.of(WebViewActivity.Feature.FULL_SCREEN), null, 0, null);
      if (!str.isEmpty()) {
        localStringBuilder.append(str).append(".");
      }
    }
  }
  
  protected void a()
  {
    getWebView().getSettings().setDisplayZoomControls(false);
    getWebView().getSettings().setSupportZoom(false);
    getWebView().setWebViewClient(a);
  }
  
  protected WebViewClient getWebViewClient()
  {
    return a;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.ActivitySupportCenter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */