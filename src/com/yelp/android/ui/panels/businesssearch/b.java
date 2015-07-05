package com.yelp.android.ui.panels.businesssearch;

import android.content.Context;
import android.util.Pair;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.x;
import com.yelp.android.util.StringUtils.Format;
import com.yelp.android.util.o;

class b
  extends x<T, Pair<String, String>>
{
  b(BusinessAdapter paramBusinessAdapter) {}
  
  public Pair<String, String> a(Context paramContext, T paramT)
  {
    YelpBusiness localYelpBusiness = paramT.getBusiness();
    if (localYelpBusiness == null) {
      return null;
    }
    boolean bool = AppData.b().g().a(paramContext);
    paramT = AppData.b().n().c();
    BusinessAdapter localBusinessAdapter = a;
    if (BusinessAdapter.a(a) == null)
    {
      BusinessAdapter.a(localBusinessAdapter, paramT);
      if (!bool) {
        break label138;
      }
    }
    label138:
    for (double d = localYelpBusiness.getDistance(BusinessAdapter.a(a));; d = o.e(localYelpBusiness.getDistance(BusinessAdapter.a(a))))
    {
      if (d > Integer.valueOf(100).doubleValue()) {
        break label157;
      }
      return Pair.create(localYelpBusiness.getDistanceFormatted(BusinessAdapter.a(a), paramContext, StringUtils.Format.ABBREVIATED), localYelpBusiness.getDistanceFormatted(BusinessAdapter.a(a), paramContext, StringUtils.Format.VERBOSE));
      paramT = BusinessAdapter.a(a);
      break;
    }
    label157:
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesssearch.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */