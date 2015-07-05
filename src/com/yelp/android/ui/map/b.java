package com.yelp.android.ui.map;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener;
import com.google.android.gms.maps.model.Marker;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.panels.ac;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class b<T extends LocalAd>
  implements GoogleMap.OnInfoWindowClickListener, e<YelpBusiness>
{
  private final Context a;
  private final Map<String, YelpBusiness> b;
  private f<YelpBusiness> c;
  private List<T> d;
  
  public b(Context paramContext)
  {
    a = paramContext;
    b = new HashMap();
  }
  
  public YelpBusiness a(Marker paramMarker)
  {
    return (YelpBusiness)b.get(paramMarker.getId());
  }
  
  public void a()
  {
    b.clear();
  }
  
  public void a(YelpBusiness paramYelpBusiness, Marker paramMarker)
  {
    b.put(paramMarker.getId(), paramYelpBusiness);
  }
  
  public void a(f<YelpBusiness> paramf)
  {
    c = paramf;
  }
  
  public void a(List<T> paramList)
  {
    d = paramList;
  }
  
  public View getInfoContents(Marker paramMarker)
  {
    return null;
  }
  
  public View getInfoWindow(Marker paramMarker)
  {
    ac localac = new ac(a);
    paramMarker = (YelpBusiness)b.get(paramMarker.getId());
    if (paramMarker != null)
    {
      localac.a(null);
      if (d == null) {
        break label134;
      }
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        LocalAd localLocalAd = (LocalAd)localIterator.next();
        if (TextUtils.equals(paramMarker.getId(), localLocalAd.getBusinessId())) {
          localac.a(paramMarker, localLocalAd);
        }
      }
    }
    label134:
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        localac.a(paramMarker);
      }
      if ((paramMarker != null) && (c != null)) {
        c.b(paramMarker);
      }
      return localac;
    }
  }
  
  public void onInfoWindowClick(Marker paramMarker)
  {
    if (c != null) {
      c.a(a(paramMarker));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */