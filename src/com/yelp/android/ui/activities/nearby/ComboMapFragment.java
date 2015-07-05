package com.yelp.android.ui.activities.nearby;

import android.graphics.RectF;
import android.location.Location;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.CameraPosition.Builder;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.serializable.by;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.a;
import com.yelp.android.ui.util.YelpMapFragment;
import java.util.List;

public class ComboMapFragment<T extends by>
  extends YelpMapFragment<T>
{
  private Runnable b;
  private Runnable c;
  private boolean d = false;
  private int e = 0;
  private l<T> g;
  private List<T> h;
  
  private boolean a(List<T> paramList)
  {
    boolean bool2 = true;
    int i = 1;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < paramList.size())
      {
        LatLng localLatLng1 = ((by)paramList.get(i - 1)).getLatLng();
        LatLng localLatLng2 = ((by)paramList.get(i)).getLatLng();
        if ((latitude != latitude) || (longitude != longitude)) {
          bool1 = false;
        }
      }
      else
      {
        return bool1;
      }
      i += 1;
    }
  }
  
  private void b(int paramInt)
  {
    if ((paramInt > 0) && (a != null) && (getView() != null))
    {
      a.setClipRect(new RectF(0.0F, 0.0F, getView().getWidth(), paramInt));
      a.invalidate();
    }
  }
  
  private Runnable g()
  {
    if ((h == null) || (h.size() == 0)) {
      return null;
    }
    if (a(h))
    {
      LatLng localLatLng = ((by)h.get(0)).getLatLng();
      if ((!Double.isNaN(latitude)) && (!Double.isNaN(longitude)) && (!Double.isInfinite(latitude)))
      {
        localObject = localLatLng;
        if (!Double.isInfinite(longitude)) {}
      }
      else
      {
        localObject = AppData.b().n().c();
        localObject = new LatLng(((Location)localObject).getLatitude(), ((Location)localObject).getLongitude());
      }
    }
    for (Object localObject = new LatLngBounds(new LatLng(latitude - 0.003000000026077032D, longitude - 0.003000000026077032D), new LatLng(latitude + 0.003000000026077032D, longitude + 0.003000000026077032D));; localObject = a.a(h))
    {
      double d2 = 2.0D;
      double d1 = d2;
      if (e > 0)
      {
        d1 = d2;
        if (getView() != null) {
          d1 = (getView().getHeight() - e) / e;
        }
      }
      d2 = northeast.latitude;
      double d3 = southwest.latitude;
      return new k(this, new LatLngBounds(new LatLng(southwest.latitude - d1 * (d2 - d3), southwest.longitude), northeast));
    }
  }
  
  public void a() {}
  
  public void a(int paramInt)
  {
    e = paramInt;
    c = g();
    if (!d) {
      a.a(c);
    }
  }
  
  public void a(l<T> paraml)
  {
    g = paraml;
  }
  
  public void a(List<T> paramList, a<T> parama)
  {
    if (a == null) {
      throw new IllegalStateException("Hold up cuz, map not created");
    }
    h = paramList;
    a.f();
    if ((h == null) || (h.size() == 0)) {
      return;
    }
    if (a(h))
    {
      paramList = ((by)h.get(0)).getLatLng();
      paramList = new CameraPosition.Builder().target(paramList).zoom(16.0F).build();
      a.a(h, parama);
    }
    for (b = new j(this, paramList);; b = a.a(h, parama))
    {
      c = g();
      if (!d) {
        break;
      }
      a.a(b);
      return;
    }
    a.a(c);
  }
  
  public YelpMap<T> b()
  {
    return a;
  }
  
  public void c()
  {
    if (d)
    {
      d = false;
      b(e);
      a.a(c);
    }
  }
  
  public void d()
  {
    if (!d)
    {
      d = true;
      b(getView().getHeight());
      a.a(b);
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (g == null) {
      throw new IllegalStateException("MapFragmentCallback not set");
    }
    a.a(paramBundle, g.a());
    a.setInfoWindowListener(g.i());
    a.f();
    g.c();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903327, paramViewGroup, false);
    c(paramLayoutInflater);
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.ComboMapFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */