package com.yelp.android.ui.activities.camera;

import android.hardware.Camera.Area;
import android.hardware.Camera.Parameters;
import android.os.Handler;
import android.os.Looper;
import java.util.Collections;

public class e
  implements b
{
  private Camera.Area a;
  private CameraWrangler.FlashMode b;
  private Integer c;
  private Integer d;
  private final CameraWrangler e;
  private final Handler f = new Handler(Looper.getMainLooper());
  
  public e(CameraWrangler paramCameraWrangler)
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
    f.post(new f(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */