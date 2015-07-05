package com.yelp.android.ui.activities.feed;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest.VoteType;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest.VoteValue;
import com.yelp.android.serializable.ReviewFeedEntry;
import com.yelp.android.serializable.YelpBusinessReview;
import java.util.HashMap;
import java.util.Map;

class aa
  implements bd
{
  aa(FeedFragment paramFeedFragment) {}
  
  public void a(ReviewVoteRequest.VoteValue paramVoteValue, ReviewVoteRequest.VoteType paramVoteType, ReviewFeedEntry paramReviewFeedEntry)
  {
    HashMap localHashMap = new HashMap();
    paramReviewFeedEntry.setupIriParams(localHashMap);
    switch (ah.a[paramVoteValue.ordinal()])
    {
    default: 
      if (paramVoteType != ReviewVoteRequest.VoteType.ADD) {
        break;
      }
    }
    for (boolean bool = true;; bool = false)
    {
      localHashMap.put("is_positive", Boolean.valueOf(bool));
      AppData.a(FeedEventIriType.FEED_VOTED.getFeedEventIriByFeedType(FeedFragment.h(a)), localHashMap);
      FeedFragment.a(a, new ReviewVoteRequest(FeedFragment.i(a), paramVoteType, paramVoteValue, paramReviewFeedEntry.getReview().getId()));
      FeedFragment.j(a).execute(new Void[0]);
      return;
      localHashMap.put("vote_type", "useful");
      break;
      localHashMap.put("vote_type", "funny");
      break;
      localHashMap.put("vote_type", "cool");
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */