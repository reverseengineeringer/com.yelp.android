package com.yelp.android.ui.activities.feed;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest.VoteType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.i;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.ReviewFeedEntry;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.serializable.YelpBusinessReview.ReviewFeedback;
import com.yelp.android.serializable.YelpBusinessReview.UserFeedback;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.Iterator;

class ap
  implements i
{
  ap(FeedFragment paramFeedFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    int j = 1;
    int k = 1;
    int i = 1;
    if (FeedFragment.b(a) == null) {}
    do
    {
      return;
      while (!paramApiRequest.hasNext())
      {
        localObject = (ReviewVoteRequest)paramApiRequest;
        paramApiRequest = FeedFragment.b(a).iterator();
      }
      paramVoid = (FeedEntry)paramApiRequest.next();
    } while (!paramVoid.getId().equals(((ReviewVoteRequest)localObject).c()));
    paramApiRequest = ((ReviewFeedEntry)paramVoid).getReview();
    paramVoid = ((ReviewVoteRequest)localObject).a();
    Object localObject = ((ReviewVoteRequest)localObject).b();
    YelpBusinessReview.UserFeedback localUserFeedback = paramApiRequest.getUserFeedback();
    YelpBusinessReview.ReviewFeedback localReviewFeedback = paramApiRequest.getFeedback();
    if (paramVoid == ReviewVoteRequest.VoteType.ADD) {}
    for (boolean bool = true;; bool = false) {
      switch (ah.a[localObject.ordinal()])
      {
      default: 
        new ObjectDirtyEvent(paramApiRequest, "com.yelp.android.review.update").a(a.getActivity());
        return;
      }
    }
    localUserFeedback.setVotedUseful(bool);
    j = localReviewFeedback.getUsefulVotes();
    if (bool) {}
    for (;;)
    {
      localReviewFeedback.setUsefulVotes(j + i);
      break;
      i = -1;
    }
    localUserFeedback.setVotedFunny(bool);
    k = localReviewFeedback.getFunnyVotes();
    if (bool) {}
    for (i = j;; i = -1)
    {
      localReviewFeedback.setFunnyVotes(k + i);
      break;
    }
    localUserFeedback.setVotedCool(bool);
    j = localReviewFeedback.getCoolVotes();
    if (bool) {}
    for (i = k;; i = -1)
    {
      localReviewFeedback.setCoolVotes(j + i);
      break;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    YelpLog.error(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */