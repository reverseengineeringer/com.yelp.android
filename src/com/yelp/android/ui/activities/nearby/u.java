package com.yelp.android.ui.activities.nearby;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Category;
import com.yelp.android.ui.activities.PickCategory;

final class u
  implements View.OnClickListener
{
  private final Category b;
  
  private u(s params, Category paramCategory)
  {
    b = paramCategory;
  }
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.NearbyCategory, "category", b.getAlias());
    if ("MoreCategories".equals(b.getAlias()))
    {
      AppData.a(ViewIri.NearbyMoreCategories);
      s.a(a).startActivity(PickCategory.a(s.a(a), null, null, true, true));
      return;
    }
    s.a(a).startActivity(ActivityNearby.a(s.a(a), b.getAlias(), b));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */