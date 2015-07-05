package com.yelp.android.ui.activities.notifications;

import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.as;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.AlertsResponse;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

class g
  extends j<AlertsResponse>
{
  g(NotificationsFragment paramNotificationsFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, AlertsResponse paramAlertsResponse)
  {
    if (a.i()) {
      NotificationsFragment.b(a).clear();
    }
    a.j();
    NotificationsFragment.a(a, paramAlertsResponse.getNextPage());
    if ((NotificationsFragment.a(a).isEmpty()) && (!TextUtils.isEmpty(paramAlertsResponse.getRevision()))) {
      new as(paramAlertsResponse.getRevision(), NotificationsFragment.c(a)).execute(new Void[0]);
    }
    NotificationsFragment.b(a).addAll(paramAlertsResponse.getAlerts());
    NotificationsFragment.a(a).notifyDataSetChanged();
    if (TextUtils.isEmpty(paramAlertsResponse.getNextPage()))
    {
      a.a(true);
      if (NotificationsFragment.a(a).isEmpty()) {
        a.a(ErrorType.NO_NOTIFICIATIONS);
      }
    }
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (NotificationsFragment.a(a).isEmpty())
    {
      a.a(ErrorType.getTypeFromException(paramYelpException), new h(this));
      return;
    }
    a.a(true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.notifications.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */