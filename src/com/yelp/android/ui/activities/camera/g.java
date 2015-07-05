package com.yelp.android.ui.activities.camera;

import android.content.Context;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.view.OrientationEventListener;

class g
  extends OrientationEventListener
{
  private final CameraWrangler a;
  private Integer b;
  
  public g(Context paramContext, int paramInt, CameraWrangler paramCameraWrangler)
  {
    super(paramContext, paramInt);
    a = paramCameraWrangler;
  }
  
  public void onOrientationChanged(int paramInt)
  {
    if (paramInt == -1) {}
    for (;;)
    {
      return;
      Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
      Camera.getCameraInfo(CameraWrangler.d(a), localCameraInfo);
      paramInt = (paramInt + 45) / 90 * 90;
      if (facing == 1) {}
      for (paramInt = (orientation - paramInt + 360) % 360; (b == null) || (b.intValue() != paramInt); paramInt = (orientation + paramInt) % 360)
      {
        b = Integer.valueOf(paramInt);
        a.f().a(paramInt).a();
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */