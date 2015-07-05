package com.yelp.android.ui.activities.camera;

import android.annotation.TargetApi;
import android.hardware.Camera;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.util.YelpLog;
import java.io.IOException;

class p
  implements View.OnClickListener
{
  p(TakePhoto paramTakePhoto) {}
  
  @TargetApi(9)
  public void onClick(View paramView)
  {
    try
    {
      TakePhoto.a(a).a((TakePhoto.a(a).a() + 1) % Camera.getNumberOfCameras(), TakePhoto.d(a).getHolder());
      return;
    }
    catch (IOException paramView)
    {
      YelpLog.e(a, "Could not open camera", paramView);
      a.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */