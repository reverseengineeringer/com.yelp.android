package com.yelp.android.ui.activities.notifications;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.i;
import com.yelp.android.serializable.Alert;
import com.yelp.android.serializable.AlertAction;
import com.yelp.android.ui.util.cr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class j
  implements i
{
  j(NotificationsFragment paramNotificationsFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    NotificationsFragment.d(a).remove(paramApiRequest);
    NotificationsFragment.b(a).clear();
    NotificationsFragment.a(a, false);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    cr.a(paramYelpException.getMessage(AppData.b()), 0);
    paramYelpException = (m)paramApiRequest;
    AlertAction localAlertAction;
    do
    {
      Iterator localIterator1 = NotificationsFragment.b(a).iterator();
      Iterator localIterator2;
      while (!localIterator2.hasNext())
      {
        if (!localIterator1.hasNext()) {
          break;
        }
        localIterator2 = ((Alert)localIterator1.next()).getActions().iterator();
      }
      localAlertAction = (AlertAction)localIterator2.next();
    } while (!localAlertAction.getPath().equals(m.a(paramYelpException)));
    localAlertAction.setDisabled(false);
    NotificationsFragment.a(a).notifyDataSetChanged();
    return;
    NotificationsFragment.d(a).remove(paramApiRequest);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.notifications.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */