package com.yelp.android.ui.panels.businesssearch;

import android.content.Context;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.w;
import com.yelp.android.ui.util.x;
import com.yelp.android.util.StringUtils;
import java.util.List;

class a
  extends x<T, String>
{
  a(BusinessAdapter paramBusinessAdapter) {}
  
  public String a(Context paramContext, T paramT)
  {
    paramContext = paramT.getBusiness();
    if (paramContext == null) {}
    do
    {
      return "";
      paramContext = paramContext.getCategories();
    } while (paramContext.isEmpty());
    return StringUtils.a(", ", paramContext, new w());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesssearch.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */