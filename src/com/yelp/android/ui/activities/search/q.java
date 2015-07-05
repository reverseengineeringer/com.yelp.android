package com.yelp.android.ui.activities.search;

import android.content.Context;
import android.content.Intent;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ap;
import com.yelp.android.appdata.webrequests.fv;
import com.yelp.android.serializable.AttributeFilters;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.PromotedFilter;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

class q
  implements CompoundButton.OnCheckedChangeListener
{
  q(l paraml, PromotedFilter paramPromotedFilter) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    paramCompoundButton = l.a(b).k();
    if (paramCompoundButton == null) {
      paramCompoundButton = new Filter();
    }
    for (;;)
    {
      String str = a.getAlias();
      Object localObject = paramCompoundButton.getAttributes();
      if (!paramBoolean) {
        ((AttributeFilters)localObject).removeAttribute(str);
      }
      for (;;)
      {
        localObject = new HashMap();
        ((Map)localObject).put("alias", str);
        ((Map)localObject).put("toggle_on", Boolean.valueOf(paramBoolean));
        AppData.a(EventIri.SearchPromotedFilterToggle, (Map)localObject);
        paramCompoundButton = SearchBusinessesByList.a((Context)l.c(b).get(), l.a(b).i().a(paramCompoundButton).a());
        paramCompoundButton.addFlags(65536);
        ((SearchBusinessesByList)l.c(b).get()).a(paramCompoundButton);
        return;
        ((AttributeFilters)localObject).addPromotedFilter(a);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */