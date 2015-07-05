package com.yelp.android.ui.activities.feed;

import android.view.View;
import android.widget.Checkable;
import com.yelp.android.serializable.TipFeedEntry;
import com.yelp.android.ui.widgets.j;

class bp
  implements j
{
  bp(bl parambl, br parambr) {}
  
  public <CheckableView extends View,  extends Checkable> void onCheckedChanged(CheckableView paramCheckableView)
  {
    a.a(((Integer)paramCheckableView.getTag(2131492911)).intValue(), (TipFeedEntry)paramCheckableView.getTag(2131492902), ((Checkable)paramCheckableView).isChecked());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */