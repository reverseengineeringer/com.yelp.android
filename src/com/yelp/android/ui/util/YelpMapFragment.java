package com.yelp.android.ui.util;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.maps.MapView;
import com.yelp.android.serializable.by;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.g;
import com.yelp.android.ui.map.i;

public abstract class YelpMapFragment<T extends by>
  extends YelpFragment
  implements i
{
  protected YelpMap<T> a;
  private g b;
  
  public void a(MapView paramMapView) {}
  
  protected final void c(View paramView)
  {
    a = ((YelpMap)paramView.findViewById(2131493617));
  }
  
  public g e()
  {
    return b;
  }
  
  protected void f()
  {
    b.a(a.getMapView());
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (a == null)
    {
      c(getView());
      a.a(paramBundle, null);
      f();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = new g(getActivity(), this);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    a.d();
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    a.e();
  }
  
  public void onPause()
  {
    super.onPause();
    a.b();
  }
  
  public void onResume()
  {
    super.onResume();
    a.c();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    a.a(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.YelpMapFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */