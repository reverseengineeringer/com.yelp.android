package com.yelp.android.ui.activities.support;

import android.app.Activity;
import com.yelp.android.appdata.webrequests.ApiRequest;

public final class m
  implements l
{
  private Activity a;
  
  public m(Activity paramActivity)
  {
    if (paramActivity == null) {
      throw new NullPointerException("Must be a non null Activity");
    }
    a = paramActivity;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest)
  {
    if (a != null) {
      a.finish();
    }
    a = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */