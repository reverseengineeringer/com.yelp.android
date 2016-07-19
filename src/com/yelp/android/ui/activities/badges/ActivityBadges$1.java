package com.yelp.android.ui.activities.badges;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.ListAdapter;

class ActivityBadges$1
  implements AdapterView.OnItemClickListener
{
  ActivityBadges$1(ActivityBadges paramActivityBadges) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (ActivityBadges.a(a).getAdapter().isEnabled(paramInt)) {
      ActivityBadges.c(a).a(ActivityBadges.b(a).a(paramInt));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.badges.ActivityBadges.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */