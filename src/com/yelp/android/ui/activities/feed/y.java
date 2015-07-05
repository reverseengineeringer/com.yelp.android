package com.yelp.android.ui.activities.feed;

import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fq;
import com.yelp.android.av.i;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedEntry;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.Iterator;

class y
  implements i
{
  y(FeedFragment paramFeedFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    if (FeedFragment.b(a) == null) {}
    FeedEntry localFeedEntry;
    do
    {
      return;
      while (!paramVoid.hasNext())
      {
        paramApiRequest = (fq)paramApiRequest;
        paramVoid = FeedFragment.b(a).iterator();
      }
      localFeedEntry = (FeedEntry)paramVoid.next();
    } while (!TextUtils.equals(localFeedEntry.getId(), paramApiRequest.a()));
    paramVoid = ((TipFeedEntry)localFeedEntry).getTip();
    if (paramApiRequest.b()) {
      paramVoid.getFeedback().addPositiveFeedback();
    }
    for (;;)
    {
      new ObjectDirtyEvent(paramVoid, "com.yelp.android.tips.update").a(a.getActivity());
      return;
      paramVoid.getFeedback().removePositiveFeedback();
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    YelpLog.error(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */