package com.yelp.android.ui.activities.settings;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dr.a;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.Location;
import com.yelp.android.ui.activities.support.b;

class ChangeSettings$6
  extends k.b<dr.a>
{
  ChangeSettings$6(ChangeSettings paramChangeSettings, String paramString) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dr.a parama)
  {
    b.getHelper().f();
    if ((!b) || (a == null)) {
      ChangeSettings.c(b);
    }
    for (;;)
    {
      b.c();
      return;
      ChangeSettings.a(b, b.getSupportFragmentManager(), ChangeSettings.a(b), a, a.h());
    }
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    b.c();
    b.getHelper().f();
    ChangeSettings.c(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.ChangeSettings.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */