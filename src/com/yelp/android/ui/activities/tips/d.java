package com.yelp.android.ui.activities.tips;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.fq;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedback;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.compliments.a;
import com.yelp.android.ui.widgets.LeftDrawableToggleButton;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;

class d
  implements View.OnClickListener
{
  d(TipComplimentsLikes paramTipComplimentsLikes, dc paramdc, LeftDrawableToggleButton paramLeftDrawableToggleButton) {}
  
  public void onClick(View paramView)
  {
    if (a.e())
    {
      new fq(TipComplimentsLikes.a(c).getId(), b.isChecked()).execute(new Void[0]);
      if (TipComplimentsLikes.a(c).getFeedback().isLikedByUser())
      {
        TipComplimentsLikes.a(c).getFeedback().removePositiveFeedback();
        paramView = (TipFeedback)User.getCurrentUserInCollection(c.b);
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
        TipComplimentsLikes.a(c).getFeedback().addPositiveFeedback();
        paramView = new TipFeedback(TipComplimentsLikes.a(c), a);
        c.b.add(paramView);
      }
    }
    b.toggle();
    if (a.c()) {}
    for (int i = 2131166777;; i = 2131166049)
    {
      b.getContext().startActivity(ActivityLogin.a(b.getContext(), i));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */