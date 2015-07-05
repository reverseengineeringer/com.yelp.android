package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.gd;
import com.yelp.android.appdata.webrequests.ge;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.i;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityTwitterSignIn
  extends YelpActivity
{
  private WebView a;
  private gd b;
  private ge c;
  private String d;
  private String e;
  private final m<String> f = new ef(this);
  private final i g = new eg(this);
  
  public static Intent a(Context paramContext)
  {
    paramContext = new Intent(paramContext, ActivityTwitterSignIn.class);
    paramContext.setFlags(536870912);
    return paramContext;
  }
  
  private void a()
  {
    if ((b != null) && (b.isFetching())) {
      return;
    }
    b = new gd(f);
    b.execute(new String[0]);
  }
  
  private void b()
  {
    a.loadUrl("https://api.twitter.com/oauth/authenticate?oauth_token=" + d);
    a.setVisibility(0);
  }
  
  private void c()
  {
    if ((c != null) && (c.isFetching())) {
      return;
    }
    c = new ge(d, e, g);
    c.execute(new Void[0]);
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
    a.setWebViewClient(new ee(this));
    a.setVisibility(8);
    setContentView(a);
    showLoadingDialog(2131166754);
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
    b = ((gd)thawRequest("GET_TOKEN", b, f));
    c = ((ge)thawRequest("SAVE_TOKEN", c, g));
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