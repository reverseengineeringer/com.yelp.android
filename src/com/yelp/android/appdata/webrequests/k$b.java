package com.yelp.android.appdata.webrequests;

import android.location.Location;

public abstract class k$b<Result>
  implements ApiRequest.b<Result>
{
  public void a(Location paramLocation) {}
  
  public abstract boolean a();
  
  public abstract void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException);
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.k.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */