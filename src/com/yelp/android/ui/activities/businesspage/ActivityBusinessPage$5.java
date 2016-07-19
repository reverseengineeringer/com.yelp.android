package com.yelp.android.ui.activities.businesspage;

import android.support.v4.app.l;
import android.support.v4.app.o;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.yelp.android.ui.activities.support.b;
import com.yelp.android.ui.util.av.a;

class ActivityBusinessPage$5
  extends av.a
{
  ActivityBusinessPage$5(ActivityBusinessPage paramActivityBusinessPage) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    a.getSupportFragmentManager().a().a(ActivityBusinessPage.a(a)).b();
    a.getHelper().h();
    ActivityBusinessPage.b(a).setVisibility(4);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ActivityBusinessPage.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */