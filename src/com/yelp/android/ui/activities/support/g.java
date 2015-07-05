package com.yelp.android.ui.activities.support;

import android.content.ComponentName;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;

class g
  implements View.OnClickListener
{
  private Intent a;
  private b c;
  
  public g(YelpActivity paramYelpActivity, Intent paramIntent, b paramb)
  {
    a = paramIntent;
    c = paramb;
  }
  
  public void a(Intent paramIntent)
  {
    a = paramIntent;
  }
  
  public void onClick(View paramView)
  {
    if (c != null) {
      AppData.a(c);
    }
    if (!a.getComponent().equals(new ComponentName(b, b.getClass())))
    {
      a.addFlags(65536);
      b.startActivity(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */