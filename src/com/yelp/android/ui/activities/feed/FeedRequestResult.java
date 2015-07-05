package com.yelp.android.ui.activities.feed;

import com.yelp.android.serializable.FeedEntry;
import java.util.List;

public class FeedRequestResult
{
  private final List<FeedEntry> a;
  private final String b;
  private final FeedRequestResult.FeedStatus c;
  
  private FeedRequestResult(List<FeedEntry> paramList, String paramString, FeedRequestResult.FeedStatus paramFeedStatus)
  {
    a = paramList;
    b = paramString;
    c = paramFeedStatus;
  }
  
  public static FeedRequestResult a(List<FeedEntry> paramList, String paramString)
  {
    if (paramString == null) {}
    for (FeedRequestResult.FeedStatus localFeedStatus = FeedRequestResult.FeedStatus.NO_MORE_FEEDS;; localFeedStatus = FeedRequestResult.FeedStatus.NEXT_PAGE) {
      return new FeedRequestResult(paramList, paramString, localFeedStatus);
    }
  }
  
  public List<FeedEntry> a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public FeedRequestResult.FeedStatus c()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.FeedRequestResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */