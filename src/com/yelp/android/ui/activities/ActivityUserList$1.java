package com.yelp.android.ui.activities;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.util.ap;

class ActivityUserList$1
  implements AdapterView.OnItemClickListener
{
  ActivityUserList$1(ActivityUserList paramActivityUserList) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (User)ActivityUserList.a(a).getItem(paramInt);
    a.startActivity(ActivityUserProfile.a(a, paramAdapterView.ae()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityUserList.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */