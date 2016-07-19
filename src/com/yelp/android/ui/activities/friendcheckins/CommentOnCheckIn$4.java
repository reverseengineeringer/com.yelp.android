package com.yelp.android.ui.activities.friendcheckins;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.CheckInFeedback;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import java.util.List;

class CommentOnCheckIn$4
  implements View.OnClickListener
{
  CommentOnCheckIn$4(CommentOnCheckIn paramCommentOnCheckIn) {}
  
  public void onClick(View paramView)
  {
    if (CommentOnCheckIn.d(a).size() == 1)
    {
      a.startActivity(ActivityUserProfile.a(a, ((CheckInFeedback)CommentOnCheckIn.d(a).get(0)).i()));
      return;
    }
    a.startActivity(WhoLikedThisCheckIn.a(a, a.a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.CommentOnCheckIn.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */