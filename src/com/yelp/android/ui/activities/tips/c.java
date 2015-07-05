package com.yelp.android.ui.activities.tips;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.compliments.SendCompliment;

class c
  implements View.OnClickListener
{
  c(TipComplimentsLikes paramTipComplimentsLikes) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(ActivityLogin.a(paramView.getContext(), 2131166775, 2131166038, SendCompliment.a(paramView.getContext(), TipComplimentsLikes.a(a))));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */