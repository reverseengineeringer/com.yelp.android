package com.yelp.android.ui.activities.businesspage;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.yelp.android.ui.activities.support.h;
import com.yelp.android.ui.util.dd;

class g
  extends dd
{
  g(ActivityBusinessPage paramActivityBusinessPage) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    a.getSupportFragmentManager().beginTransaction().remove(ActivityBusinessPage.a(a)).commitAllowingStateLoss();
    a.getHelper().h();
    ActivityBusinessPage.b(a).setVisibility(4);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */