package com.yelp.android.ui.activities.feed.viewbinder;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;

class s$1
  implements View.OnClickListener
{
  s$1(s params, int paramInt) {}
  
  public void onClick(View paramView)
  {
    paramView.getContext().startActivity(ActivityBusinessPage.b(paramView.getContext(), ((YelpBusiness)b.getItem(a)).aD()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.viewbinder.s.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */