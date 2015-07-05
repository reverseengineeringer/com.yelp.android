package com.yelp.android.ui.activities.camera;

import android.hardware.Camera;
import android.hardware.Camera.Parameters;

class f
  implements Runnable
{
  f(e parame) {}
  
  public void run()
  {
    if (CameraWrangler.c(e.a(a)) == null) {
      return;
    }
    Camera localCamera = CameraWrangler.c(e.a(a));
    Camera.Parameters localParameters = localCamera.getParameters();
    e.a(a, localParameters);
    if (e.b(a) != null) {
      localParameters.setZoom(e.b(a).intValue());
    }
    if (e.c(a) != null) {
      localParameters.setRotation(e.c(a).intValue());
    }
    if (e.d(a) != null) {
      localParameters.setFlashMode(da).mode);
    }
    localCamera.setParameters(localParameters);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */