package com.yelp.android.appdata.webrequests;

import android.content.Intent;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.User;

class dh
  implements m<User>
{
  dh(dc paramdc) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, User paramUser)
  {
    a.b(paramUser);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (dc.b(a) < 3)
    {
      dc.c(a);
      dc.d(a);
    }
    do
    {
      return;
      dc.a(a, 0);
    } while ((dc.e(a) == null) || (dc.e(a).isFullUser()));
    AppData.b().sendBroadcast(new Intent("user_failed_to_fetch"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */