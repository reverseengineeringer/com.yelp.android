package com.yelp.android.ui.activities.support;

import android.content.Intent;
import android.support.v4.widget.t;
import android.view.View;
import com.yelp.android.ui.activities.drawer.DrawerFragment;

class f
  implements t
{
  private boolean b;
  private Intent c;
  
  private f(YelpActivity paramYelpActivity) {}
  
  public void onDrawerClosed(View paramView)
  {
    b = false;
    if (c != null)
    {
      c.setFlags(c.getFlags() | 0x10000);
      a.startActivity(c);
      c = null;
    }
    YelpActivity.access$200(a).c();
  }
  
  public void onDrawerOpened(View paramView)
  {
    b = true;
    YelpActivity.access$200(a).b();
  }
  
  public void onDrawerSlide(View paramView, float paramFloat) {}
  
  public void onDrawerStateChanged(int paramInt)
  {
    if ((!b) && ((paramInt == 2) || (paramInt == 1))) {
      YelpActivity.access$200(a).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */