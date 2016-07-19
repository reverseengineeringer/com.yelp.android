package com.yelp.android.ui.activities.profile;

import com.yelp.android.serializable.SingleFeedEntry;
import java.util.Comparator;
import java.util.Date;

class ActivityFirstAwards$5
  implements Comparator<SingleFeedEntry>
{
  ActivityFirstAwards$5(ActivityFirstAwards paramActivityFirstAwards) {}
  
  public int a(SingleFeedEntry paramSingleFeedEntry1, SingleFeedEntry paramSingleFeedEntry2)
  {
    return paramSingleFeedEntry2.d().compareTo(paramSingleFeedEntry1.d());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityFirstAwards.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */