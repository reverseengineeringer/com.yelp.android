package com.yelp.android.ui.activities.friendcheckins;

import android.content.Context;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yelp.android.serializable.DisplayableAsUserBadge;
import com.yelp.android.serializable.Royal;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;

class NearbyCheckIns$7
  implements AdapterView.OnItemClickListener
{
  NearbyCheckIns$7(NearbyCheckIns paramNearbyCheckIns) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramView = paramView.getContext();
    paramAdapterView = paramAdapterView.getAdapter().getItem(paramInt);
    if ((paramAdapterView instanceof Royal)) {
      paramView.startActivity(ActivityUserProfile.a(paramView, ((Royal)paramAdapterView).e()));
    }
    while (!(paramAdapterView instanceof DisplayableAsUserBadge)) {
      return;
    }
    paramView.startActivity(ActivityUserProfile.a(paramView, ((DisplayableAsUserBadge)paramAdapterView).i()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.NearbyCheckIns.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */