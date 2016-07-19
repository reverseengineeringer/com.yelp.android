package com.yelp.android.ui.activities.camera;

import android.hardware.Camera;
import android.hardware.Camera.Area;
import android.hardware.Camera.Parameters;
import android.os.Handler;
import android.os.Looper;
import java.util.Collections;

public class CameraWrangler$a
  implements b
{
  private Camera.Area a;
  private CameraWrangler.FlashMode b;
  private Integer c;
  private Integer d;
  private final CameraWrangler e;
  private final Handler f = new Handler(Looper.getMainLooper());
  
  public CameraWrangler$a(CameraWrangler paramCameraWrangler)
  {
    e = paramCameraWrangler;
  }
  
  private void a(Camera.Parameters paramParameters)
  {
    if (a != null) {
      paramParameters.setFocusAreas(Collections.singletonList(a));
    }
  }
  
  public b a(int paramInt)
  {
    c = Integer.valueOf(paramInt);
    return this;
  }
  
  public b a(CameraWrangler.FlashMode paramFlashMode)
  {
    b = paramFlashMode;
    return this;
  }
  
  public void a()
  {
    f.post(new Runnable()
    {
      public void run()
      {
        if (CameraWrangler.c(CameraWrangler.a.a(CameraWrangler.a.this)) == null) {
          return;
        }
        Camera localCamera = CameraWrangler.c(CameraWrangler.a.a(CameraWrangler.a.this));
        Camera.Parameters localParameters = localCamera.getParameters();
        CameraWrangler.a.a(CameraWrangler.a.this, localParameters);
        if (CameraWrangler.a.b(CameraWrangler.a.this) != null) {
          localParameters.setZoom(CameraWrangler.a.b(CameraWrangler.a.this).intValue());
        }
        if (CameraWrangler.a.c(CameraWrangler.a.this) != null) {
          localParameters.setRotation(CameraWrangler.a.c(CameraWrangler.a.this).intValue());
        }
        if (CameraWrangler.a.d(CameraWrangler.a.this) != null) {
          localParameters.setFlashMode(dmode);
        }
        localCamera.setParameters(localParameters);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.CameraWrangler.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */