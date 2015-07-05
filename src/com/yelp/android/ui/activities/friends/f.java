package com.yelp.android.ui.activities.friends;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import com.yelp.android.serializable.User;
import com.yelp.android.services.job.SendFriendRequestsJob;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.ArrayList;
import java.util.Iterator;

class f
  implements View.OnClickListener
{
  f(FindFriendsFBContactsFragment paramFindFriendsFBContactsFragment) {}
  
  public void onClick(View paramView)
  {
    paramView = new ArrayList();
    Iterator localIterator = FindFriendsFBContactsFragment.a(a).iterator();
    while (localIterator.hasNext()) {
      paramView.add(((User)localIterator.next()).getUserId());
    }
    if (!paramView.isEmpty())
    {
      SendFriendRequestsJob.launchJob(paramView, null, null);
      FindFriendsFBContactsFragment.e(a).setVisibility(8);
      a.m().getEmptyView().setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */