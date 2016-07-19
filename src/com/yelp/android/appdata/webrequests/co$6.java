package com.yelp.android.appdata.webrequests;

import android.content.Intent;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.User;

class co$6
  implements ApiRequest.b<Integer>
{
  private int b;
  
  co$6(co paramco) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Integer paramInteger)
  {
    paramApiRequest = a.p();
    if (paramApiRequest != null)
    {
      paramApiRequest.b(paramInteger.intValue());
      AppData.b().sendBroadcast(new Intent("user_is_fetched"));
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (b < 3)
    {
      co.a(a);
      b += 1;
      return;
    }
    b = 0;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.co.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */