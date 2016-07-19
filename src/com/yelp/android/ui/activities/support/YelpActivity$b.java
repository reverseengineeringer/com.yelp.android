package com.yelp.android.ui.activities.support;

import android.content.ComponentName;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;

class YelpActivity$b
  implements View.OnClickListener
{
  private Intent b;
  private a c;
  
  public YelpActivity$b(YelpActivity paramYelpActivity, Intent paramIntent, a parama)
  {
    b = paramIntent;
    c = parama;
  }
  
  public void onClick(View paramView)
  {
    if (paramView == YelpActivity.access$200(a)) {
      a.setFeedHotButtonSelected(true);
    }
    for (;;)
    {
      if (c != null) {
        AppData.a(c);
      }
      if (b.getComponent().equals(new ComponentName(a, a.getClass()))) {
        break;
      }
      b.addFlags(65536);
      a.startActivity(b);
      return;
      if (paramView == YelpActivity.access$300(a)) {
        a.setNearbyHotButtonSelected(true);
      } else if (paramView == YelpActivity.access$400(a)) {
        a.setSearchHotButtonSelected(true);
      }
    }
    a.onSameActivityHotButtonClick();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpActivity.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */