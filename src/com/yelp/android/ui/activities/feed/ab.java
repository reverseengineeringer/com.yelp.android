package com.yelp.android.ui.activities.feed;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.fq;
import com.yelp.android.serializable.TipFeedEntry;
import java.util.HashMap;
import java.util.Map;

class ab
  implements bh
{
  ab(FeedFragment paramFeedFragment) {}
  
  public void a(boolean paramBoolean, TipFeedEntry paramTipFeedEntry)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("vote_type", "like");
    localHashMap.put("is_positive", Boolean.valueOf(paramBoolean));
    AppData.a(FeedEventIriType.FEED_VOTED.getFeedEventIriByFeedType(FeedFragment.h(a)), localHashMap);
    FeedFragment.a(a, new fq(paramTipFeedEntry.getId(), paramBoolean, FeedFragment.k(a)));
    FeedFragment.l(a).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */