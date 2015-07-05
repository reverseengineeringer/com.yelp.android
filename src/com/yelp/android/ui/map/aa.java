package com.yelp.android.ui.map;

import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.MapsInitializer;
import com.yelp.android.util.YelpLog;
import java.util.Collection;

class aa
  implements Runnable
{
  private int a;
  private final MapView b;
  private final Runnable c;
  private final Collection<aa> d;
  
  public aa(Collection<aa> paramCollection, MapView paramMapView, Runnable paramRunnable)
  {
    b = paramMapView;
    c = paramRunnable;
    d = paramCollection;
    d.add(this);
    a = 0;
  }
  
  public void run()
  {
    try
    {
      if ((b.getHeight() != 0) && (b.getMap() != null))
      {
        MapsInitializer.initialize(b.getContext());
        b.post(c);
        d.remove(this);
        return;
      }
      b.postDelayed(this, 100L);
      return;
    }
    catch (NullPointerException localNullPointerException)
    {
      if (a < 16)
      {
        a += 1;
        b.postDelayed(this, 100L);
        return;
      }
      d.remove(this);
      if (b == null)
      {
        YelpLog.error("YelpMapPostWhenReady", "mMapView is null", localNullPointerException);
        return;
      }
      YelpLog.error("YelpMapPostWhenReady", "mMapView.getMap() threw the NPE", localNullPointerException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */