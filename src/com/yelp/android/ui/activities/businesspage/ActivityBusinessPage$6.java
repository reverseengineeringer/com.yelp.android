package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.view.View;
import android.view.ViewStub;
import android.view.ViewStub.OnInflateListener;

class ActivityBusinessPage$6
  implements ViewStub.OnInflateListener
{
  final Context a = b;
  
  ActivityBusinessPage$6(ActivityBusinessPage paramActivityBusinessPage) {}
  
  public void onInflate(ViewStub paramViewStub, View paramView)
  {
    paramView.findViewById(2131690096).setOnClickListener(new ActivityBusinessPage.6.1(this));
    paramView.findViewById(2131690086).setOnClickListener(new ActivityBusinessPage.6.2(this));
    paramView.findViewById(2131689897).setOnTouchListener(new ActivityBusinessPage.6.3(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ActivityBusinessPage.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */