package com.yelp.android.ui.activities.notifications;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.FriendRequest;
import com.yelp.android.ui.activities.profile.j;

class l
  extends BroadcastReceiver
{
  l(NotificationsFragment paramNotificationsFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.EDIT".equals(paramIntent.getAction()))
    {
      paramContext = j.a(paramIntent);
      if (a != null)
      {
        paramIntent = String.format("/compliment/approve?thanx_id=%s", new Object[] { a.getId() });
        if (b <= 0) {
          break label102;
        }
        NotificationsFragment.b(a, paramIntent);
      }
    }
    for (;;)
    {
      if (c != null)
      {
        paramIntent = String.format("/user/accept_friend?user_id=%s", new Object[] { c.getUserId() });
        if (d <= 0) {
          break;
        }
        NotificationsFragment.b(a, paramIntent);
      }
      return;
      label102:
      NotificationsFragment.c(a, paramIntent);
    }
    NotificationsFragment.c(a, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.notifications.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */