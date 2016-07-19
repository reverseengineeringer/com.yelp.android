package com.yelp.android.ui.map;

import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.maps.model.c;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.search.SearchBusinessesByMap;
import com.yelp.android.ui.panels.businesssearch.a;
import com.yelp.android.ui.panels.e;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class i<T extends LocalAd>
  extends b
{
  private c e;
  private e f;
  private YelpMapWrapperLayout g;
  private String h;
  private final SearchBusinessesByMap i;
  
  public i(SearchBusinessesByMap paramSearchBusinessesByMap)
  {
    super(paramSearchBusinessesByMap);
    i = paramSearchBusinessesByMap;
  }
  
  public View a(c paramc)
  {
    a locala = (a)b.get(paramc.a());
    if ((e == null) || (!e.equals(paramc)))
    {
      e = paramc;
      f = new e(i, paramc, locala);
      f.a();
    }
    f.setSearchRequestId(h);
    if (locala != null)
    {
      if (d == null) {
        break label214;
      }
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        LocalAd localLocalAd = (LocalAd)localIterator.next();
        if (TextUtils.equals(locala.a().aD(), localLocalAd.m())) {
          f.a(locala.a(), localLocalAd);
        }
      }
    }
    label214:
    for (int j = 1;; j = 0)
    {
      if (j == 0) {
        f.a(locala.a());
      }
      if (c != null) {
        c.b(locala);
      }
      if (g != null) {
        g.a(paramc, f);
      }
      return f;
    }
  }
  
  public void a(YelpMapWrapperLayout paramYelpMapWrapperLayout)
  {
    g = paramYelpMapWrapperLayout;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */