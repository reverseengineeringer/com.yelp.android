package com.yelp.android.services.push;

import android.util.Log;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.i;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;

class a
  implements m<Void>
{
  private final String a;
  
  public a(String paramString)
  {
    a = paramString;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    Log.i(a, "Success!");
    AppData.b().f().a(true);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    Log.e(a, "Failure :(", paramYelpException);
    AppData.b().f().a(false);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */