package com.yelp.android.analytics;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.User;

 enum GADimensions$4
{
  GADimensions$4(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public String getValue()
  {
    User localUser = AppData.b().q().p();
    if (localUser != null)
    {
      if (localUser.k() > 0) {
        return "platform_existing";
      }
      return "platform_new";
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.GADimensions.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */