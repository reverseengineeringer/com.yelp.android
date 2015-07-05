package com.yelp.android.ui.activities.friends;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.serializable.User;
import com.yelp.android.services.job.SendFriendRequestsJob;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.cw;
import java.util.ArrayList;

class c
  implements View.OnClickListener
{
  c(FindFriendsFBContactsFragment paramFindFriendsFBContactsFragment) {}
  
  public void onClick(View paramView)
  {
    int i = ((Integer)paramView.getTag()).intValue();
    paramView = (View)paramView.getParent();
    String str = ((User)FindFriendsFBContactsFragment.a(a).get(i)).getId();
    paramView.setVisibility(4);
    a.m().setEnabled(false);
    FindFriendsFBContactsFragment.b(a).setVisibility(0);
    FindFriendsFBContactsFragment.b(a).setY(paramView.getY() + FindFriendsFBContactsFragment.c(a).getMeasuredHeight());
    FindFriendsFBContactsFragment.b(a).setLayoutParams(new RelativeLayout.LayoutParams(paramView.getWidth(), paramView.getHeight()));
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(str);
    SendFriendRequestsJob.launchJob(localArrayList, null, null);
    new Handler().postDelayed(new d(this, paramView), cw.c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */