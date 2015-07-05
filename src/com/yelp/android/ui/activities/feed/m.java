package com.yelp.android.ui.activities.feed;

import android.view.View;
import android.widget.Checkable;
import com.yelp.android.serializable.CheckInFeedEntry;
import com.yelp.android.ui.widgets.j;

class m
  implements j
{
  m(k paramk, n paramn) {}
  
  public <CheckableView extends View,  extends Checkable> void onCheckedChanged(CheckableView paramCheckableView)
  {
    a.a(((Integer)paramCheckableView.getTag(2131492911)).intValue(), (CheckInFeedEntry)paramCheckableView.getTag(2131492902), ((Checkable)paramCheckableView).isChecked());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */