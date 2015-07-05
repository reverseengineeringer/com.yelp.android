package com.yelp.android.ui.map;

import android.content.Context;
import android.view.View;
import com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener;
import com.google.android.gms.maps.model.Marker;
import com.yelp.android.serializable.Event;
import com.yelp.android.ui.panels.ac;
import java.util.HashMap;
import java.util.Map;

public class d
  implements GoogleMap.OnInfoWindowClickListener, e<Event>
{
  private final Context a;
  private final Map<String, Event> b;
  private f<Event> c;
  
  public d(Context paramContext)
  {
    a = paramContext;
    b = new HashMap();
  }
  
  public Event a(Marker paramMarker)
  {
    return (Event)b.get(paramMarker.getId());
  }
  
  public void a()
  {
    b.clear();
  }
  
  public void a(Event paramEvent, Marker paramMarker)
  {
    b.put(paramMarker.getId(), paramEvent);
  }
  
  public void a(f<Event> paramf)
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
    paramMarker = (Event)b.get(paramMarker.getId());
    if (paramMarker != null)
    {
      localac.a(null);
      localac.a(paramMarker);
    }
    if ((paramMarker != null) && (c != null)) {
      c.b(paramMarker);
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
 * Qualified Name:     com.yelp.android.ui.map.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */