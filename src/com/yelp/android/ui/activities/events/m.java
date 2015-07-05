package com.yelp.android.ui.activities.events;

import android.view.View;
import android.view.View.OnClickListener;

class m
  implements View.OnClickListener
{
  m(EventFragment paramEventFragment) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(ActivityEventDetails.a(a.getActivity(), EventFragment.a(a)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */