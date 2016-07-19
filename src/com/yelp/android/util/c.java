package com.yelp.android.util;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import com.yelp.android.analytics.adjust.AdjustManager;
import com.yelp.android.analytics.adjust.AdjustManager.YelpAdjustEvent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.dk;
import com.yelp.android.appdata.webrequests.h;
import com.yelp.android.serializable.YelpBookmark;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.dialogs.e;

public class c
{
  private e a;
  private FragmentActivity b;
  private h c;
  private dk d;
  private a e;
  private com.yelp.android.appdata.webrequests.core.c.a f = new com.yelp.android.appdata.webrequests.core.c.a()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      c.a(c.this).dismiss();
      c.b(c.this).a(false);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      c.a(c.this).dismiss();
      c.a(c.this, 2131166609);
    }
  };
  private ApiRequest.b<YelpBookmark> g = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpBookmark paramAnonymousYelpBookmark)
    {
      c.a(c.this).dismiss();
      c.b(c.this).a(true);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      c.a(c.this).dismiss();
      c.a(c.this, 2131166609);
    }
  };
  
  public c(FragmentActivity paramFragmentActivity, a parama, YelpBusiness paramYelpBusiness)
  {
    b = paramFragmentActivity;
    e = parama;
    if (paramYelpBusiness != null) {
      if (!paramYelpBusiness.U()) {
        break label60;
      }
    }
    label60:
    for (int i = 2131166446;; i = 2131165470)
    {
      a(i);
      return;
    }
  }
  
  private void a(int paramInt)
  {
    if (a == null)
    {
      a = new e(b);
      a.setCancelable(false);
    }
    a.setMessage(b.getString(paramInt));
    a.show();
  }
  
  private void b(int paramInt)
  {
    AlertDialogFragment.a(null, b.getString(paramInt)).a(b.getSupportFragmentManager());
  }
  
  public h a()
  {
    return c;
  }
  
  public YelpBusiness a(int paramInt1, int paramInt2, YelpBusiness paramYelpBusiness)
  {
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    for (;;)
    {
      return null;
      b(paramYelpBusiness);
      return paramYelpBusiness;
      c(paramYelpBusiness);
      return paramYelpBusiness;
      if (a != null) {
        a.dismiss();
      }
    }
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    if (AppData.b().q().b())
    {
      if (paramYelpBusiness.U())
      {
        c(paramYelpBusiness);
        return;
      }
      b(paramYelpBusiness);
      return;
    }
    FragmentActivity localFragmentActivity = b;
    Intent localIntent = ActivityLogin.a(b);
    if (paramYelpBusiness.U()) {}
    for (int i = 1008;; i = 1006)
    {
      localFragmentActivity.startActivityForResult(localIntent, i);
      return;
    }
  }
  
  public dk b()
  {
    return d;
  }
  
  public void b(YelpBusiness paramYelpBusiness)
  {
    AppData.a(EventIri.BusinessAddBookmark, "id", paramYelpBusiness.aD());
    AppData.b().l().a(AdjustManager.YelpAdjustEvent.ADD_BOOKMARK);
    c = new h(paramYelpBusiness, g);
    c.f(new Void[0]);
    a(2131165470);
  }
  
  public ApiRequest.b<YelpBookmark> c()
  {
    return g;
  }
  
  public void c(YelpBusiness paramYelpBusiness)
  {
    AppData.a(EventIri.BusinessRemoveBookmark, "id", paramYelpBusiness.aD());
    d = new dk(paramYelpBusiness, f);
    d.f(new Void[0]);
    a(2131166446);
  }
  
  public com.yelp.android.appdata.webrequests.core.c.a d()
  {
    return f;
  }
  
  public static abstract interface a
  {
    public abstract void a(boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */