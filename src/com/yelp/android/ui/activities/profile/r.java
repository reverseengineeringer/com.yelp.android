package com.yelp.android.ui.activities.profile;

import android.database.DataSetObserver;
import android.widget.ListAdapter;
import com.yelp.android.ui.activities.feed.CurrentUserFeedFragment;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.util.ErrorType;

class r
  extends DataSetObserver
{
  r(SingleFeedEntryActivity paramSingleFeedEntryActivity) {}
  
  public void onChanged()
  {
    super.onChanged();
    PanelError localPanelError = SingleFeedEntryActivity.a(a);
    if (a.b.r().isEmpty())
    {
      localPanelError.a(ErrorType.NO_FEED_ITEMS);
      localPanelError.setText(a.a());
      localPanelError.setVisibility(0);
      return;
    }
    localPanelError.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */