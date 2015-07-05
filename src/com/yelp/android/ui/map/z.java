package com.yelp.android.ui.map;

import com.google.android.gms.maps.CameraUpdate;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.CancelableCallback;

class z
  implements Runnable
{
  private final GoogleMap a;
  private final CameraUpdate b;
  private final GoogleMap.CancelableCallback c;
  
  z(GoogleMap paramGoogleMap, CameraUpdate paramCameraUpdate)
  {
    this(paramGoogleMap, paramCameraUpdate, null);
  }
  
  z(GoogleMap paramGoogleMap, CameraUpdate paramCameraUpdate, GoogleMap.CancelableCallback paramCancelableCallback)
  {
    a = paramGoogleMap;
    b = paramCameraUpdate;
    c = paramCancelableCallback;
  }
  
  public void run()
  {
    if (c != null)
    {
      a.animateCamera(b, c);
      return;
    }
    a.moveCamera(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */