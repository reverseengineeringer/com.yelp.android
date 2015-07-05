package com.yelp.android.ui.activities.profile;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.fq;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedEntry;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.compliments.SendCompliment;
import com.yelp.android.ui.activities.feed.aq;
import com.yelp.android.ui.activities.feed.br;
import com.yelp.android.ui.activities.tips.WriteTip;

class d
  implements br
{
  d(ActivityFirstAwards paramActivityFirstAwards) {}
  
  public void a(int paramInt, TipFeedEntry paramTipFeedEntry)
  {
    a.startActivity(paramTipFeedEntry.getIntentForClick(a));
  }
  
  public void a(int paramInt, TipFeedEntry paramTipFeedEntry, boolean paramBoolean)
  {
    new fq(paramTipFeedEntry.getId(), paramBoolean).execute(new Void[0]);
    if (paramBoolean) {
      paramTipFeedEntry.getTip().getFeedback().addPositiveFeedback();
    }
    for (;;)
    {
      ActivityFirstAwards.b(a).notifyDataSetChanged();
      return;
      paramTipFeedEntry.getTip().getFeedback().removePositiveFeedback();
    }
  }
  
  public void b(int paramInt, TipFeedEntry paramTipFeedEntry)
  {
    if (AppData.b().m().e())
    {
      a.startActivity(SendCompliment.a(a, paramTipFeedEntry.getTip()));
      return;
    }
    a.startActivity(ActivityLogin.a(a, 2131166038));
  }
  
  public void c(int paramInt, TipFeedEntry paramTipFeedEntry)
  {
    a.startActivity(WriteTip.a(a, paramTipFeedEntry.getTip(), paramTipFeedEntry.getBusinessId()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */