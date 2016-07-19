package com.yelp.android.appdata.webrequests;

import android.content.Intent;
import com.yelp.android.analytics.i;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.User;
import com.yelp.android.util.YelpLog;

class co$5
  implements ApiRequest.b<User>
{
  private int b;
  
  co$5(co paramco) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, User paramUser)
  {
    a.b(paramUser);
    AppData.b().m().a(KahunaAttributeIri.FriendCount, String.valueOf(paramUser.k_()));
    co.a(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (b < 3) {
      if (a.b()) {
        co.b(a);
      }
    }
    do
    {
      for (;;)
      {
        b += 1;
        return;
        if (b == 0) {
          YelpLog.remoteError("LoginManager", paramYelpException);
        }
      }
      b = 0;
    } while ((co.c(a) == null) || (co.c(a).n()));
    AppData.b().sendBroadcast(new Intent("user_failed_to_fetch"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.co.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */