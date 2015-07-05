package com.yelp.android.appdata.webrequests;

import android.location.Location;
import java.util.List;

public class db<T>
  extends fy<T>
{
  public db(String paramString, Location paramLocation, m<List<T>> paramm)
  {
    super(ApiRequest.RequestType.GET, "suggest/locations", paramm, paramLocation, paramString);
    super.addUrlParam("location", paramString);
    e = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */