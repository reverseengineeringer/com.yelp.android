package com.yelp.android.ui.activities.camera;

import android.hardware.Camera;
import android.hardware.Camera.Parameters;

class CameraWrangler$a$1
  implements Runnable
{
  CameraWrangler$a$1(CameraWrangler.a parama) {}
  
  public void run()
  {
    if (CameraWrangler.c(CameraWrangler.a.a(a)) == null) {
      return;
    }
    Camera localCamera = CameraWrangler.c(CameraWrangler.a.a(a));
    Camera.Parameters localParameters = localCamera.getParameters();
    CameraWrangler.a.a(a, localParameters);
    if (CameraWrangler.a.b(a) != null) {
      localParameters.setZoom(CameraWrangler.a.b(a).intValue());
    }
    if (CameraWrangler.a.c(a) != null) {
      localParameters.setRotation(CameraWrangler.a.c(a).intValue());
    }
    if (CameraWrangler.a.d(a) != null) {
      localParameters.setFlashMode(da).mode);
    }
    localCamera.setParameters(localParameters);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.CameraWrangler.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */