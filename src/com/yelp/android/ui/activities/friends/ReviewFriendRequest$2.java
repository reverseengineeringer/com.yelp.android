package com.yelp.android.ui.activities.friends;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.webrequests.FriendRequestAcknowledgment.Acknowledgment;

class ReviewFriendRequest$2
  implements View.OnClickListener
{
  ReviewFriendRequest$2(ReviewFriendRequest paramReviewFriendRequest) {}
  
  public void onClick(View paramView)
  {
    ReviewFriendRequest.a(a, ReviewFriendRequest.b(a), FriendRequestAcknowledgment.Acknowledgment.IGNORE);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.ReviewFriendRequest.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */