package com.yelp.android.ui.activities.friends;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.webrequests.FriendRequestAcknowledgment.Acknowledgment;

class u
  implements View.OnClickListener
{
  u(ReviewFriendRequest paramReviewFriendRequest) {}
  
  public void onClick(View paramView)
  {
    ReviewFriendRequest.a(a, ReviewFriendRequest.b(a), FriendRequestAcknowledgment.Acknowledgment.IGNORE);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */