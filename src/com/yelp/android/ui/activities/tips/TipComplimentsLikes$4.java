package com.yelp.android.ui.activities.tips;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.em;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedback;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.compliments.a;
import com.yelp.android.ui.widgets.LeftDrawableToggleButton;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;

class TipComplimentsLikes$4
  implements View.OnClickListener
{
  TipComplimentsLikes$4(TipComplimentsLikes paramTipComplimentsLikes, co paramco, LeftDrawableToggleButton paramLeftDrawableToggleButton) {}
  
  public void onClick(View paramView)
  {
    if (a.d())
    {
      new em(TipComplimentsLikes.a(c).a(), b.isChecked()).f(new Void[0]);
      if (TipComplimentsLikes.a(c).g().c())
      {
        TipComplimentsLikes.a(c).g().b();
        paramView = (TipFeedback)User.a(c.b);
        if (paramView != null) {
          c.b.remove(paramView);
        }
      }
      for (;;)
      {
        TipComplimentsLikes.b(c).notifyDataSetChanged();
        TipComplimentsLikes.c(c);
        new ObjectDirtyEvent(TipComplimentsLikes.a(c), "com.yelp.android.tips.update").a(c);
        return;
        TipComplimentsLikes.a(c).g().a();
        paramView = new TipFeedback(TipComplimentsLikes.a(c), a);
        c.b.add(paramView);
      }
    }
    b.toggle();
    b.getContext().startActivity(ActivityLogin.a(c, 2131165697, 2131166108));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.TipComplimentsLikes.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */