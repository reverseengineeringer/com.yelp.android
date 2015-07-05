package com.yelp.android.ui.activities;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class ct
  implements AdapterView.OnItemClickListener
{
  ct(ActivityMediaBrowser paramActivityMediaBrowser) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a.a(paramView.getContext(), ActivityMediaBrowser.c(a), ActivityMediaBrowser.d(a), paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */