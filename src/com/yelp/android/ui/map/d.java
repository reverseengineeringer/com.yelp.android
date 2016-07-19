package com.yelp.android.ui.map;

import android.content.Context;
import android.view.View;
import com.google.android.gms.maps.c.d;
import com.google.android.gms.maps.model.c;
import com.yelp.android.serializable.Event;
import java.util.HashMap;
import java.util.Map;

public class d
  implements c.d, e<Event>
{
  private final Context a;
  private final Map<String, Event> b;
  private e.a<Event> c;
  
  public d(Context paramContext)
  {
    a = paramContext;
    b = new HashMap();
  }
  
  public View a(c paramc)
  {
    com.yelp.android.ui.panels.d locald = new com.yelp.android.ui.panels.d(a);
    paramc = (Event)b.get(paramc.a());
    if (paramc != null)
    {
      locald.a();
      locald.a(paramc);
    }
    if ((paramc != null) && (c != null)) {
      c.b(paramc);
    }
    return locald;
  }
  
  public void a()
  {
    b.clear();
  }
  
  public void a(Event paramEvent, c paramc)
  {
    b.put(paramc.a(), paramEvent);
  }
  
  public void a(e.a<Event> parama)
  {
    c = parama;
  }
  
  public View b(c paramc)
  {
    return null;
  }
  
  public void c(c paramc)
  {
    if (c != null) {
      c.a(d(paramc));
    }
  }
  
  public Event d(c paramc)
  {
    return (Event)b.get(paramc.a());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */