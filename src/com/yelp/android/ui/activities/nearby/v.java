package com.yelp.android.ui.activities.nearby;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.database.m;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.serializable.RichSearchSuggestion.RichSearchSuggestionType;
import com.yelp.android.ui.activities.PickCategory;

final class v
  implements View.OnClickListener
{
  private RichSearchSuggestion b;
  
  public v(s params, RichSearchSuggestion paramRichSearchSuggestion)
  {
    b = paramRichSearchSuggestion;
  }
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.NearbyCategory, "category", b.getAlias());
    if (b.getRichSearchSuggestionType() == RichSearchSuggestion.RichSearchSuggestionType.CATEGORY)
    {
      if ("MoreCategories".equals(b.getAlias()))
      {
        AppData.a(ViewIri.NearbyMoreCategories);
        s.a(a).startActivity(PickCategory.a(s.a(a), null, null, true, true));
        return;
      }
      paramView = AppData.b().j().a(b.getAlias());
      if (paramView != null)
      {
        s.a(a).startActivity(ActivityNearby.a(s.a(a), paramView.getAlias(), paramView));
        return;
      }
      s.a(a).startActivity(ActivityNearby.a(s.a(a), b.getTerm()));
      return;
    }
    s.a(a).startActivity(ActivityNearby.a(s.a(a), b.getTerm()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */