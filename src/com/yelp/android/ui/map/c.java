package com.yelp.android.ui.map;

import android.content.Context;
import android.view.View;
import com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener;
import com.google.android.gms.maps.model.Marker;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.panels.ac;
import java.util.HashMap;
import java.util.Map;

public class c
  implements GoogleMap.OnInfoWindowClickListener, e<YelpCheckIn>
{
  private final Context a;
  private final Map<String, YelpCheckIn> b;
  private f<YelpCheckIn> c;
  
  public c(Context paramContext)
  {
    a = paramContext;
    b = new HashMap();
  }
  
  public YelpCheckIn a(Marker paramMarker)
  {
    return (YelpCheckIn)b.get(paramMarker.getId());
  }
  
  public void a()
  {
    b.clear();
  }
  
  public void a(YelpCheckIn paramYelpCheckIn, Marker paramMarker)
  {
    b.put(paramMarker.getId(), paramYelpCheckIn);
  }
  
  public void a(f<YelpCheckIn> paramf)
  {
    c = paramf;
  }
  
  public View getInfoContents(Marker paramMarker)
  {
    return null;
  }
  
  public View getInfoWindow(Marker paramMarker)
  {
    ac localac = new ac(a);
    paramMarker = (YelpCheckIn)b.get(paramMarker.getId());
    if (paramMarker != null)
    {
      localac.a(null);
      localac.a(paramMarker.getBusiness());
      if (c != null) {
        c.b(paramMarker);
      }
    }
    return localac;
  }
  
  public void onInfoWindowClick(Marker paramMarker)
  {
    if (c != null) {
      c.a(a(paramMarker));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */