package com.yelp.android.ui.activities.camera;

import android.view.OrientationEventListener;
import java.util.Iterator;
import java.util.List;

class d
  implements Runnable
{
  d(CameraWrangler paramCameraWrangler) {}
  
  public void run()
  {
    CameraWrangler.a(a).enable();
    Iterator localIterator = CameraWrangler.b(a).iterator();
    while (localIterator.hasNext()) {
      ((a)localIterator.next()).a(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */