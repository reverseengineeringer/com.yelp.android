package com.yelp.android.appdata.webrequests;

import android.location.Location;
import java.util.List;

public class fw<T>
  extends fy<T>
{
  public fw(String paramString1, Location paramLocation, String paramString2, m<List<T>> paramm)
  {
    super(ApiRequest.RequestType.GET, "suggest", paramm, paramLocation, paramString2);
    addUrlParam("term", paramString1);
    e = paramString1;
  }
  
  public fw(String paramString, m<List<T>> paramm)
  {
    this(paramString, a, "", paramm);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */