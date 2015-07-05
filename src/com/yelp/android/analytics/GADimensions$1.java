package com.yelp.android.analytics;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;

 enum GADimensions$1
{
  GADimensions$1(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public String getValue()
  {
    dc localdc = AppData.b().m();
    if (localdc.c())
    {
      if (localdc.e()) {
        return "confirmed";
      }
      return "unconfirmed";
    }
    return "anonymous";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.GADimensions.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */