package com.yelp.android.ui.activities.notifications;

import com.yelp.android.serializable.Alert;
import com.yelp.android.serializable.AlertAction;
import com.yelp.android.serializable.Media;
import com.yelp.android.ui.activities.photoviewer.ActivityMediaViewer;
import java.util.Collections;
import java.util.List;

class k
  implements e
{
  k(NotificationsFragment paramNotificationsFragment) {}
  
  public void a(Alert paramAlert, int paramInt1, int paramInt2)
  {
    paramAlert = (AlertAction)paramAlert.getActions().get(paramInt1);
    String str = paramAlert.getPath();
    if (str != null)
    {
      paramAlert.setDisabled(true);
      NotificationsFragment.a(a).notifyDataSetChanged();
      paramAlert = m.a(str, NotificationsFragment.e(a), str);
      paramAlert.execute(new Void[0]);
      NotificationsFragment.d(a).add(paramAlert);
    }
  }
  
  public void a(Media paramMedia)
  {
    a.startActivity(ActivityMediaViewer.a(a.getActivity(), Collections.singletonList(paramMedia), 0));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.notifications.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */