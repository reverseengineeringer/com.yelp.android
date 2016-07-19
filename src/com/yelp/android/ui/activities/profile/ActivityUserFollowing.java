package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fg;
import com.yelp.android.appdata.webrequests.fg.a;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.ap;

public class ActivityUserFollowing
  extends YelpListActivity
{
  private ap a;
  private fg b;
  private int c;
  private int d = -1;
  private boolean e;
  private final ApiRequest.b<fg.a> f = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, fg.a paramAnonymousa)
    {
      ActivityUserFollowing.a(ActivityUserFollowing.this, false);
      disableLoading();
      ActivityUserFollowing.a(ActivityUserFollowing.this).a(a, true);
      ActivityUserFollowing.a(ActivityUserFollowing.this, ActivityUserFollowing.a(ActivityUserFollowing.this).getCount());
      ActivityUserFollowing.b(ActivityUserFollowing.this, b);
      if (ActivityUserFollowing.b(ActivityUserFollowing.this) == ActivityUserFollowing.c(ActivityUserFollowing.this)) {
        a();
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      ActivityUserFollowing.a(ActivityUserFollowing.this, false);
      disableLoading();
      populateError(paramAnonymousYelpException);
    }
  };
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityUserFollowing.class);
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    startActivity(ActivityUserProfile.a(this, (User)a.getItem(paramInt)));
  }
  
  protected void c()
  {
    if ((!e) && ((d == -1) || (a.getCount() < d)))
    {
      e = true;
      b = new fg(c, f);
      b.f(new Void[0]);
    }
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131165926);
    if (paramBundle != null)
    {
      c = paramBundle.getInt("request_offset");
      d = paramBundle.getInt("total");
    }
    a = ap.a(paramBundle);
    r().setAdapter(a);
    if (d == -1)
    {
      enableLoading();
      c();
    }
    while (a.getCount() != d) {
      return;
    }
    a();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (b != null)
    {
      b.a(true);
      b.a(null);
      b = null;
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("user_following", b);
  }
  
  protected void onResume()
  {
    super.onResume();
    b = ((fg)thawRequest("user_following", b, f));
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("request_offset", c);
    paramBundle.putInt("total", d);
    a.b(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityUserFollowing
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */