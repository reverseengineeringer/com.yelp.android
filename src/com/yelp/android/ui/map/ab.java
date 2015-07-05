package com.yelp.android.ui.map;

import com.google.android.gms.maps.GoogleMap.CancelableCallback;
import com.google.android.gms.maps.GoogleMap.OnCameraChangeListener;

class ab<T>
  implements GoogleMap.CancelableCallback
{
  private final YelpMap<? extends T> a;
  private final GoogleMap.OnCameraChangeListener b;
  private final int c;
  
  public ab(YelpMap<? extends T> paramYelpMap, GoogleMap.OnCameraChangeListener paramOnCameraChangeListener, int paramInt)
  {
    a = paramYelpMap;
    b = paramOnCameraChangeListener;
    c = paramInt;
  }
  
  public void onCancel()
  {
    onFinish();
  }
  
  public void onFinish()
  {
    a.postDelayed(new ac(this), c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */