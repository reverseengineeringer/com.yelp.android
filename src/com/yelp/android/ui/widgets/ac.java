package com.yelp.android.ui.widgets;

import android.support.v4.view.ViewPager;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest.VoteType;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest.VoteValue;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.serializable.YelpBusinessReview.ReviewFeedback;
import com.yelp.android.serializable.YelpBusinessReview.UserFeedback;
import com.yelp.android.ui.activities.reviewpage.ReviewFragment;
import com.yelp.android.ui.activities.reviewpage.av;
import java.util.List;

class ac
  implements av
{
  ac(ReviewPagerFragment paramReviewPagerFragment) {}
  
  public void a()
  {
    a.e();
  }
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool1 = true;
    ReviewPagerFragment.d(a).clearAnimation();
    YelpBusinessReview localYelpBusinessReview = a.b();
    label65:
    ReviewVoteRequest.VoteType localVoteType;
    switch (paramCompoundButton.getId())
    {
    default: 
      return;
    case 2131493055: 
      paramCompoundButton = ReviewVoteRequest.VoteValue.FUNNY;
      if (paramBoolean)
      {
        localVoteType = ReviewVoteRequest.VoteType.ADD;
        label74:
        ReviewVoteRequest localReviewVoteRequest = new ReviewVoteRequest(ReviewPagerFragment.e(a), localVoteType, paramCompoundButton, a.b().getId());
        localReviewVoteRequest.execute(new Void[0]);
        ReviewPagerFragment.f(a).add(localReviewVoteRequest);
        if (localVoteType != ReviewVoteRequest.VoteType.ADD) {
          break label221;
        }
      }
      break;
    }
    label221:
    for (int i = 1;; i = -1) {
      switch (af.b[paramCompoundButton.ordinal()])
      {
      default: 
        ((ReviewFragment)ReviewPagerFragment.b(a).getItem(ReviewPagerFragment.c(a).getCurrentItem())).a();
        return;
        paramCompoundButton = ReviewVoteRequest.VoteValue.COOL;
        break label65;
        paramCompoundButton = ReviewVoteRequest.VoteValue.USEFUL;
        break label65;
        localVoteType = ReviewVoteRequest.VoteType.REMOVE;
        break label74;
      }
    }
    localYelpBusinessReview.getFeedback().setUsefulVotes(localYelpBusinessReview.getFeedback().getUsefulVotes() + i);
    paramCompoundButton = localYelpBusinessReview.getUserFeedback();
    if (i == 1) {}
    for (paramBoolean = bool1;; paramBoolean = false)
    {
      paramCompoundButton.setVotedUseful(paramBoolean);
      break;
    }
    localYelpBusinessReview.getFeedback().setFunnyVotes(localYelpBusinessReview.getFeedback().getFunnyVotes() + i);
    paramCompoundButton = localYelpBusinessReview.getUserFeedback();
    if (i == 1) {}
    for (paramBoolean = bool2;; paramBoolean = false)
    {
      paramCompoundButton.setVotedFunny(paramBoolean);
      break;
    }
    localYelpBusinessReview.getFeedback().setCoolVotes(localYelpBusinessReview.getFeedback().getCoolVotes() + i);
    paramCompoundButton = localYelpBusinessReview.getUserFeedback();
    if (i == 1) {}
    for (paramBoolean = bool3;; paramBoolean = false)
    {
      paramCompoundButton.setVotedCool(paramBoolean);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */