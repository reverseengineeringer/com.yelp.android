package com.yelp.android.ui.activities.friends;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;

class t
  implements View.OnClickListener
{
  t(ReviewFriendRequest paramReviewFriendRequest) {}
  
  public void onClick(View paramView)
  {
    paramView = paramView.getContext();
    paramView.startActivity(ActivityUserProfile.a(paramView, ReviewFriendRequest.a(a)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */