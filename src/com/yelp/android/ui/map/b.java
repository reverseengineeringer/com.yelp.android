package com.yelp.android.ui.map;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.maps.c.d;
import com.google.android.gms.maps.model.c;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.panels.businesssearch.a;
import com.yelp.android.ui.panels.d;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class b<T extends LocalAd>
  implements c.d, e<a>
{
  protected final Context a;
  protected final Map<String, a> b;
  protected e.a<a> c;
  protected List<T> d;
  
  public b(Context paramContext)
  {
    a = paramContext;
    b = new HashMap();
  }
  
  public View a(c paramc)
  {
    d locald = new d(a);
    paramc = (a)b.get(paramc.a());
    if (paramc != null)
    {
      locald.a();
      if (d == null) {
        break label148;
      }
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        LocalAd localLocalAd = (LocalAd)localIterator.next();
        if (TextUtils.equals(paramc.a().aD(), localLocalAd.m())) {
          locald.a(paramc.a(), localLocalAd);
        }
      }
    }
    label148:
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        locald.a(paramc.a());
      }
      if ((paramc != null) && (c != null)) {
        c.b(paramc);
      }
      return locald;
    }
  }
  
  public void a()
  {
    b.clear();
  }
  
  public void a(e.a<a> parama)
  {
    c = parama;
  }
  
  public void a(a parama, c paramc)
  {
    b.put(paramc.a(), parama);
  }
  
  public void a(List<T> paramList)
  {
    d = paramList;
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
  
  public a d(c paramc)
  {
    return (a)b.get(paramc.a());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */