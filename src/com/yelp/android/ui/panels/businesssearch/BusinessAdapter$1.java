package com.yelp.android.ui.panels.businesssearch;

import android.content.Context;
import com.yelp.android.serializable.Category.b;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.m;
import com.yelp.android.util.StringUtils;
import java.util.List;

class BusinessAdapter$1
  extends m<T, String>
{
  BusinessAdapter$1(BusinessAdapter paramBusinessAdapter) {}
  
  public String a(Context paramContext, T paramT)
  {
    paramContext = paramT.a();
    if (paramContext == null) {}
    do
    {
      return "";
      paramContext = paramContext.aV();
    } while (paramContext.isEmpty());
    return StringUtils.a(", ", paramContext, new Category.b());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesssearch.BusinessAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */