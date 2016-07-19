package com.yelp.android.appdata.webrequests;

import android.location.Location;
import java.util.List;

public class cn<T>
  extends ep<T>
{
  public cn(String paramString, Location paramLocation, ApiRequest.b<List<T>> paramb)
  {
    super(ApiRequest.RequestType.GET, "suggest/locations", paramb, paramLocation, paramString);
    super.a("location", paramString);
    j = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */