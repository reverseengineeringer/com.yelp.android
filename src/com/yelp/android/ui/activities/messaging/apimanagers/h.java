package com.yelp.android.ui.activities.messaging.apimanagers;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.util.YelpLog;

public abstract class h
{
  private ApiRequest<?, ?, ?> a;
  
  protected void a(ApiRequest<?, ?, ?> paramApiRequest)
  {
    if (!g())
    {
      a = paramApiRequest;
      a.execute(new Object[0]);
      return;
    }
    YelpLog.d(this, "ApiAdapter dropped the " + paramApiRequest.toString() + " because " + a.toString() + " is already in progress.");
  }
  
  public boolean g()
  {
    return (a != null) && (a.isFetching());
  }
  
  public void h()
  {
    if (a != null)
    {
      a.cancel(true);
      a.setCallback(null);
      a = null;
    }
  }
  
  protected void i()
  {
    a = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.apimanagers.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */