package com.yelp.android.ui.activities.elite;

import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Location;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.ErrorType;

class ActivityEliteWelcomeSplash$5
  implements ApiRequest.b<Location>
{
  ActivityEliteWelcomeSplash$5(ActivityEliteWelcomeSplash paramActivityEliteWelcomeSplash) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Location paramLocation)
  {
    a.disableLoading();
    if (paramLocation != null)
    {
      a.disableLoading();
      paramApiRequest = AppData.b().q().p().ad();
      ActivityEliteWelcomeSplash.e(a).setText(a.getString(2131165833, new Object[] { paramApiRequest, paramLocation.g() }));
      ActivityEliteWelcomeSplash.f(a);
      return;
    }
    as.a(a.getString(2131166751), 1);
    ActivityEliteWelcomeSplash.b(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.disableLoading();
    as.a(ErrorType.getTypeFromException(paramYelpException).getTextId(), 1);
    ActivityEliteWelcomeSplash.b(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.elite.ActivityEliteWelcomeSplash.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */