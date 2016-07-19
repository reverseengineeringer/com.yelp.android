package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.eu;
import com.yelp.android.appdata.webrequests.ev;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityTwitterSignIn
  extends YelpActivity
{
  private WebView a;
  private eu b;
  private ev c;
  private String d;
  private String e;
  private final ApiRequest.b<String> f = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, String paramAnonymousString)
    {
      ActivityTwitterSignIn.b(ActivityTwitterSignIn.this, paramAnonymousString);
      ActivityTwitterSignIn.d(ActivityTwitterSignIn.this);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      showYesNoDialog(paramAnonymousYelpException.getMessageResource(), 2131166469, 2131165583, 1);
    }
  };
  private final c.a g = new c.a()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      hideLoadingDialog();
      setResult(-1);
      finish();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      showYesNoDialog(paramAnonymousYelpException.getMessageResource(), 2131166469, 2131165583, 1);
    }
  };
  
  public static Intent a(Context paramContext)
  {
    paramContext = new Intent(paramContext, ActivityTwitterSignIn.class);
    paramContext.setFlags(536870912);
    return paramContext;
  }
  
  private void a()
  {
    if ((b != null) && (b.u())) {
      return;
    }
    b = new eu(f);
    b.f(new String[0]);
  }
  
  private void b()
  {
    a.loadUrl("https://api.twitter.com/oauth/authenticate?oauth_token=" + d);
    a.setVisibility(0);
  }
  
  private void c()
  {
    if ((c != null) && (c.u())) {
      return;
    }
    c = new ev(d, e, g);
    c.f(new Void[0]);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.TwitterLogin;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      d = paramBundle.getString("oauth_token");
      e = paramBundle.getString("oauth_verifier");
    }
    a = new WebView(this);
    a.setWebViewClient(new WebViewClient()
    {
      public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
        hideLoadingDialog();
      }
      
      public void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
      {
        super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
        showLoadingDialog(2131166734);
      }
      
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        if (paramAnonymousString.contains("yelp:///twitter_oauth"))
        {
          showLoadingDialog(2131166734);
          ActivityTwitterSignIn.a(ActivityTwitterSignIn.this).setVisibility(8);
          paramAnonymousWebView = Uri.parse(paramAnonymousString);
          if (!TextUtils.equals(paramAnonymousWebView.getQueryParameter("oauth_token"), ActivityTwitterSignIn.b(ActivityTwitterSignIn.this))) {
            showYesNoDialog(2131165847, 2131166469, 2131165583, 2);
          }
          ActivityTwitterSignIn.a(ActivityTwitterSignIn.this, paramAnonymousWebView.getQueryParameter("oauth_verifier"));
          ActivityTwitterSignIn.c(ActivityTwitterSignIn.this);
          return true;
        }
        if ((paramAnonymousString.startsWith("https://api.twitter.com/oauth")) || (paramAnonymousString.startsWith("https://api.twitter.com/account/login_verification")) || (paramAnonymousString.startsWith("https://api.twitter.com/login/error"))) {
          return false;
        }
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramAnonymousString)));
        return true;
      }
    });
    a.setVisibility(8);
    setContentView(a);
    showLoadingDialog(2131166734);
    if ((d != null) && (e != null))
    {
      c();
      return;
    }
    if ((d != null) && (e == null))
    {
      b();
      return;
    }
    a();
  }
  
  public void onPause()
  {
    super.onPause();
    freezeRequest("GET_TOKEN", b);
    freezeRequest("SAVE_TOKEN", c);
  }
  
  public void onResume()
  {
    super.onResume();
    b = ((eu)thawRequest("GET_TOKEN", b, f));
    c = ((ev)thawRequest("SAVE_TOKEN", c, g));
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("oauth_token", d);
    paramBundle.putString("oauth_verifier", e);
  }
  
  public void onYesNoDialogSelection(boolean paramBoolean, int paramInt)
  {
    if (!paramBoolean) {
      finish();
    }
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      a();
      return;
    case 1: 
      c();
      return;
    }
    b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityTwitterSignIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */