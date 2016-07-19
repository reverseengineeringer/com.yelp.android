package com.yelp.android.ui.activities.nearby;

import android.graphics.RectF;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.yelp.android.serializable.f;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.a;
import com.yelp.android.ui.map.e;
import com.yelp.android.ui.map.e.a;
import com.yelp.android.ui.util.YelpMapFragment;
import java.util.List;

public class ComboMapFragment<T extends f>
  extends YelpMapFragment<T>
{
  private boolean b = false;
  private int c = 0;
  private a<T> d;
  private List<T> e;
  
  private void b(int paramInt)
  {
    if ((paramInt > 0) && (a != null) && (getView() != null))
    {
      a.setClipRect(new RectF(0.0F, 0.0F, getView().getWidth(), paramInt));
      a.invalidate();
    }
  }
  
  private void h()
  {
    if ((e == null) || (e.size() == 0) || (!a.h())) {
      return;
    }
    LatLngBounds localLatLngBounds = a.a(e);
    double d2 = 2.0D;
    double d1 = d2;
    if (c > 0)
    {
      d1 = d2;
      if (getView() != null) {
        d1 = (getView().getHeight() - c) / c;
      }
    }
    d2 = b.a;
    double d3 = a.a;
    localLatLngBounds = new LatLngBounds(new LatLng(a.a - d1 * (d2 - d3), a.b), b);
    a.a(localLatLngBounds);
  }
  
  public void a() {}
  
  public void a(int paramInt)
  {
    c = paramInt;
    if ((!b) && (a.h())) {
      h();
    }
  }
  
  public void a(a<T> parama)
  {
    d = parama;
  }
  
  public void a(List<T> paramList, a<T> parama)
  {
    if (a == null) {
      throw new IllegalStateException("Hold up cuz, map not created");
    }
    e = paramList;
    a.g();
    if ((e == null) || (e.size() == 0) || (!a.h())) {
      return;
    }
    a.a(e, parama);
    if (b)
    {
      a.f();
      return;
    }
    h();
  }
  
  public YelpMap<T> b()
  {
    return a;
  }
  
  public void c()
  {
    if ((b) && (e.size() > 0))
    {
      b = false;
      b(c);
      if (a.h()) {
        h();
      }
    }
  }
  
  public void e()
  {
    if ((!b) && (e.size() > 0))
    {
      b = true;
      b(getView().getHeight());
      if (a.h()) {
        a.f();
      }
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (d == null) {
      throw new IllegalStateException("MapFragmentCallback not set");
    }
    a.a(paramBundle, d.a());
    a.setInfoWindowListener(d.i());
    a.g();
    d.c();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903426, paramViewGroup, false);
    c(paramLayoutInflater);
    return paramLayoutInflater;
  }
  
  public static abstract interface a<T>
  {
    public abstract e<T> a();
    
    public abstract void c();
    
    public abstract e.a<T> i();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.ComboMapFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */