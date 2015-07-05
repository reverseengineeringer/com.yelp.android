package com.yelp.android.ui.activities.feed;

import android.view.View;
import android.widget.AbsListView.RecyclerListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.BizPhotoFeedEntry;
import com.yelp.android.serializable.Photo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

class af
  implements AbsListView.RecyclerListener
{
  af(FeedFragment paramFeedFragment) {}
  
  public void onMovedToScrapHeap(View paramView)
  {
    if ((paramView.getTag() instanceof e))
    {
      paramView = (e)paramView.getTag();
      int i = paramView.b();
      if (i >= 0)
      {
        int j = amPhotos.size();
        paramView = ((Photo)amPhotos.get(0)).getId();
        HashMap localHashMap = new HashMap();
        localHashMap.put("seen_media_count", Integer.valueOf(i));
        localHashMap.put("total_media_count", Integer.valueOf(j));
        localHashMap.put("media_id", paramView);
        AppData.a(FeedEventIriType.FEED_MEDIA_SEEN.getFeedEventIriByFeedType(FeedFragment.h(a)), localHashMap);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */