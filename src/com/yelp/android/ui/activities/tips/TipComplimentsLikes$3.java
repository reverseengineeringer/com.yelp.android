package com.yelp.android.ui.activities.tips;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.compliments.SendCompliment;

class TipComplimentsLikes$3
  implements View.OnClickListener
{
  TipComplimentsLikes$3(TipComplimentsLikes paramTipComplimentsLikes) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(ActivityLogin.a(paramView.getContext(), 2131165707, 2131166098, SendCompliment.a(paramView.getContext(), TipComplimentsLikes.a(a))));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.TipComplimentsLikes.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */