package com.yelp.android.ui.activities.support;

import android.content.Intent;
import android.support.v4.widget.DrawerLayout.f;
import android.view.View;
import com.yelp.android.ui.activities.drawer.DrawerFragment;

class YelpActivity$a
  implements DrawerLayout.f
{
  private boolean b;
  private Intent c;
  
  private YelpActivity$a(YelpActivity paramYelpActivity) {}
  
  public void a(int paramInt)
  {
    if ((!b) && ((paramInt == 2) || (paramInt == 1))) {
      YelpActivity.access$500(a).a();
    }
  }
  
  public void a(View paramView)
  {
    b = true;
    YelpActivity.access$500(a).b();
  }
  
  public void a(View paramView, float paramFloat) {}
  
  public void b(View paramView)
  {
    b = false;
    if (c != null)
    {
      c.setFlags(c.getFlags() | 0x10000);
      a.startActivity(c);
      c = null;
    }
    YelpActivity.access$500(a).c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpActivity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */