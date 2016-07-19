package com.yelp.android.ui.activities.tips;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.Tip;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;

class TipComplimentsLikes$1
  implements View.OnClickListener
{
  TipComplimentsLikes$1(TipComplimentsLikes paramTipComplimentsLikes) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(ActivityUserProfile.a(a, TipComplimentsLikes.a(a).b()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.TipComplimentsLikes.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */