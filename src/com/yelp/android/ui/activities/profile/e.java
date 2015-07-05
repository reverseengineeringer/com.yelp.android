package com.yelp.android.ui.activities.profile;

import com.yelp.android.serializable.FeedEntry;
import java.util.Comparator;
import java.util.Date;

class e
  implements Comparator<FeedEntry>
{
  e(ActivityFirstAwards paramActivityFirstAwards) {}
  
  public int a(FeedEntry paramFeedEntry1, FeedEntry paramFeedEntry2)
  {
    return paramFeedEntry2.getDate().compareTo(paramFeedEntry1.getDate());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */