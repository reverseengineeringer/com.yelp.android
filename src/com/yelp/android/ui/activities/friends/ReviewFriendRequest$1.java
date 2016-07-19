package com.yelp.android.ui.activities.friends;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;

class ReviewFriendRequest$1
  implements View.OnClickListener
{
  ReviewFriendRequest$1(ReviewFriendRequest paramReviewFriendRequest) {}
  
  public void onClick(View paramView)
  {
    paramView = paramView.getContext();
    paramView.startActivity(ActivityUserProfile.a(paramView, ReviewFriendRequest.a(a)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.ReviewFriendRequest.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */