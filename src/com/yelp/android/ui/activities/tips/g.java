package com.yelp.android.ui.activities.tips;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.Passport;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedback;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import java.util.ArrayList;

class g
  implements View.OnClickListener
{
  g(TipComplimentsLikes paramTipComplimentsLikes) {}
  
  public void onClick(View paramView)
  {
    if (a.b.size() == 1)
    {
      a.startActivity(ActivityUserProfile.a(a, ((TipFeedback)a.b.get(0)).getUserPassport().getId()));
      return;
    }
    a.startActivity(WhoLikedThisTip.a(a, TipComplimentsLikes.a(a).getId(), TipComplimentsLikes.a(a).getBusinessId()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */