package com.yelp.android.ui.activities.tips;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.Passport;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedback;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import java.util.ArrayList;

class TipComplimentsLikes$7
  implements View.OnClickListener
{
  TipComplimentsLikes$7(TipComplimentsLikes paramTipComplimentsLikes) {}
  
  public void onClick(View paramView)
  {
    if (a.b.size() == 1)
    {
      a.startActivity(ActivityUserProfile.a(a, ((TipFeedback)a.b.get(0)).k().p()));
      return;
    }
    a.startActivity(WhoLikedThisTip.a(a, TipComplimentsLikes.a(a).a(), TipComplimentsLikes.a(a).q()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.TipComplimentsLikes.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */