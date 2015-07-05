package com.yelp.android.ui.activities.feed;

import com.yelp.android.appdata.webrequests.ReviewVoteRequest.VoteType;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest.VoteValue;
import com.yelp.android.serializable.ReviewFeedEntry;

public abstract interface bd
{
  public abstract void a(ReviewVoteRequest.VoteValue paramVoteValue, ReviewVoteRequest.VoteType paramVoteType, ReviewFeedEntry paramReviewFeedEntry);
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */