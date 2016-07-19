package com.yelp.android.ui.activities.camera;

import android.view.OrientationEventListener;
import java.util.Iterator;
import java.util.List;

class CameraWrangler$1
  implements Runnable
{
  CameraWrangler$1(CameraWrangler paramCameraWrangler) {}
  
  public void run()
  {
    CameraWrangler.a(a).disable();
    Iterator localIterator = CameraWrangler.b(a).iterator();
    while (localIterator.hasNext()) {
      ((a)localIterator.next()).b(a);
    }
    a.c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.CameraWrangler.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */