package com.yelp.android.ba;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;

class h
  implements View.OnClickListener
{
  h(f paramf, FeedEntry paramFeedEntry, Context paramContext) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.FeedFriendBusiness, a.getBusinessIriParams());
    b.startActivity(ActivityBusinessPage.a(b, a.getBusinessId()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ba.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */