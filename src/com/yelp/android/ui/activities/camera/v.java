package com.yelp.android.ui.activities.camera;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.media.CamcorderProfile;
import com.yelp.android.ui.activities.videotrim.q;
import com.yelp.android.util.YelpLog;
import java.io.IOException;
import java.util.List;

class v
  extends q
{
  v(VideoCaptureFragment paramVideoCaptureFragment) {}
  
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    if (VideoCaptureFragment.h(a) == null)
    {
      VideoCaptureFragment.a(a, Camera.open());
      Object localObject1 = VideoCaptureFragment.h(a).getParameters();
      Object localObject2 = VideoCaptureFragment.i(a);
      Camera localCamera = VideoCaptureFragment.h(a);
      localCamera.getClass();
      localObject2 = new Camera.Size(localCamera, videoFrameWidth, videoFrameHeight);
      if (((Camera.Parameters)localObject1).getSupportedPreviewSizes().contains(localObject2))
      {
        ((Camera.Parameters)localObject1).setPreviewSize(width, height);
        VideoCaptureFragment.h(a).setParameters((Camera.Parameters)localObject1);
      }
      localObject1 = ((Camera.Parameters)localObject1).getPreviewSize();
      VideoCaptureFragment.a(a, width, height);
      VideoCaptureFragment.h(a).setDisplayOrientation(VideoCaptureFragment.j(a));
      try
      {
        VideoCaptureFragment.h(a).setPreviewTexture(paramSurfaceTexture);
        VideoCaptureFragment.h(a).startPreview();
        paramSurfaceTexture = VideoCaptureFragment.h(a).getParameters().getSupportedFocusModes();
        if (CameraWrangler.a(VideoCaptureFragment.h(a)))
        {
          VideoCaptureFragment.h(a).autoFocus(null);
          return;
        }
        if (paramSurfaceTexture.contains("continuous-video"))
        {
          paramSurfaceTexture = VideoCaptureFragment.h(a).getParameters();
          paramSurfaceTexture.setFocusMode("continuous-video");
          VideoCaptureFragment.h(a).setParameters(paramSurfaceTexture);
          return;
        }
      }
      catch (IOException paramSurfaceTexture)
      {
        YelpLog.error(paramSurfaceTexture);
      }
    }
  }
  
  public boolean onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture)
  {
    if (VideoCaptureFragment.h(a) != null)
    {
      VideoCaptureFragment.h(a).setPreviewCallback(null);
      VideoCaptureFragment.h(a).stopPreview();
      VideoCaptureFragment.h(a).release();
      VideoCaptureFragment.a(a, null);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */