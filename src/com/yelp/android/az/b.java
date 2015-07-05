package com.yelp.android.az;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;

class b
  implements View.OnClickListener
{
  b(a parama, FeedEntry paramFeedEntry, Context paramContext) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.FeedFriendBusiness, a.getBusinessIriParams());
    b.startActivity(ActivityBusinessPage.a(b, a.getBusinessId()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.az.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */