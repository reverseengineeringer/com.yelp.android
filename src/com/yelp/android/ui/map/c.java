package com.yelp.android.ui.map;

import android.content.Context;
import android.view.View;
import com.google.android.gms.maps.c.d;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.panels.d;
import java.util.HashMap;
import java.util.Map;

public class c
  implements c.d, e<YelpCheckIn>
{
  private final Context a;
  private final Map<String, YelpCheckIn> b;
  private e.a<YelpCheckIn> c;
  
  public c(Context paramContext)
  {
    a = paramContext;
    b = new HashMap();
  }
  
  public View a(com.google.android.gms.maps.model.c paramc)
  {
    d locald = new d(a);
    paramc = (YelpCheckIn)b.get(paramc.a());
    if (paramc != null)
    {
      locald.a();
      locald.a(paramc.d());
      if (c != null) {
        c.b(paramc);
      }
    }
    return locald;
  }
  
  public void a()
  {
    b.clear();
  }
  
  public void a(YelpCheckIn paramYelpCheckIn, com.google.android.gms.maps.model.c paramc)
  {
    b.put(paramc.a(), paramYelpCheckIn);
  }
  
  public void a(e.a<YelpCheckIn> parama)
  {
    c = parama;
  }
  
  public View b(com.google.android.gms.maps.model.c paramc)
  {
    return null;
  }
  
  public void c(com.google.android.gms.maps.model.c paramc)
  {
    if (c != null) {
      c.a(d(paramc));
    }
  }
  
  public YelpCheckIn d(com.google.android.gms.maps.model.c paramc)
  {
    return (YelpCheckIn)b.get(paramc.a());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */