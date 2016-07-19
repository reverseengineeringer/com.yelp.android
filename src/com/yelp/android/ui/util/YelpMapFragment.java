package com.yelp.android.ui.util;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.maps.MapView;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.f.a;

public abstract class YelpMapFragment<T extends com.yelp.android.serializable.f>
  extends YelpFragment
  implements f.a
{
  protected YelpMap<T> a;
  private com.yelp.android.ui.map.f b;
  
  public void a(MapView paramMapView) {}
  
  protected final void c(View paramView)
  {
    a = ((YelpMap)paramView.findViewById(2131690351));
  }
  
  public com.yelp.android.ui.map.f f()
  {
    return b;
  }
  
  protected void g()
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
      g();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = new com.yelp.android.ui.map.f(getActivity(), this);
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