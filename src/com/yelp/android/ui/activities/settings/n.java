package com.yelp.android.ui.activities.settings;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.er;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Location;
import com.yelp.android.ui.activities.support.h;

class n
  implements m<er>
{
  n(ChangeSettings paramChangeSettings) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, er paramer)
  {
    a.getHelper().f();
    if ((!b) || (a == null)) {
      ChangeSettings.c(a);
    }
    for (;;)
    {
      a.a();
      return;
      ChangeSettings.a(a.getString(2131165978), a.getDisplay(), ChangeSettings.a(a));
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.a();
    a.getHelper().f();
    ChangeSettings.c(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */