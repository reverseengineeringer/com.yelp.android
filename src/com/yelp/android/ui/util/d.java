package com.yelp.android.ui.util;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

class d
  implements AdapterView.OnItemClickListener
{
  d(AndroidListFragment paramAndroidListFragment) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a.a((ListView)paramAdapterView, paramView, paramInt, paramLong);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */