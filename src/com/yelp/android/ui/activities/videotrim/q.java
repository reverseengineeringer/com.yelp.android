package com.yelp.android.ui.activities.videotrim;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.view.TextureView.SurfaceTextureListener;

@TargetApi(14)
public class q
  implements TextureView.SurfaceTextureListener
{
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2) {}
  
  public boolean onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture)
  {
    return true;
  }
  
  public void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2) {}
  
  public void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */