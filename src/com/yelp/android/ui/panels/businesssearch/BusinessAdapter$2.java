package com.yelp.android.ui.panels.businesssearch;

import android.content.Context;
import android.util.Pair;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.m;
import com.yelp.android.util.StringUtils.Format;
import com.yelp.android.util.i;

class BusinessAdapter$2
  extends m<T, Pair<String, String>>
{
  BusinessAdapter$2(BusinessAdapter paramBusinessAdapter) {}
  
  public Pair<String, String> a(Context paramContext, T paramT)
  {
    YelpBusiness localYelpBusiness = paramT.a();
    if (localYelpBusiness == null) {
      return null;
    }
    boolean bool = AppData.b().g().a(paramContext);
    paramT = AppData.b().r().c();
    BusinessAdapter localBusinessAdapter = a;
    if (BusinessAdapter.a(a) == null)
    {
      BusinessAdapter.a(localBusinessAdapter, paramT);
      if (!bool) {
        break label138;
      }
    }
    label138:
    for (double d = localYelpBusiness.a(BusinessAdapter.a(a));; d = i.e(localYelpBusiness.a(BusinessAdapter.a(a))))
    {
      if (d > Integer.valueOf(100).doubleValue()) {
        break label157;
      }
      return Pair.create(localYelpBusiness.a(BusinessAdapter.a(a), paramContext, StringUtils.Format.ABBREVIATED), localYelpBusiness.a(BusinessAdapter.a(a), paramContext, StringUtils.Format.VERBOSE));
      paramT = BusinessAdapter.a(a);
      break;
    }
    label157:
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesssearch.BusinessAdapter.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */