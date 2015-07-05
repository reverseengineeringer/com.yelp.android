package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.Tip;
import com.yelp.android.ui.activities.tips.TipComplimentsLikes;

class ed
  implements View.OnClickListener
{
  ed(ActivityTipOfTheDay paramActivityTipOfTheDay, Tip paramTip) {}
  
  public void onClick(View paramView)
  {
    b.startActivity(TipComplimentsLikes.a(b, a, a.getBusinessName()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */