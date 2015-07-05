package com.yelp.android.ui.activities.videotrim;

import android.graphics.SurfaceTexture;
import com.yelp.android.serializable.LocalVideo;
import com.yelp.android.util.YelpLog;
import java.io.IOException;

class c
  extends q
{
  c(ActivityVideoTrim paramActivityVideoTrim) {}
  
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    try
    {
      ActivityVideoTrim.a(a, new BetterMediaPlayer());
      ActivityVideoTrim.c(a).setDataSource(ActivityVideoTrim.b(a).getFilePath());
      ActivityVideoTrim.c(a).a(ActivityVideoTrim.d(a), ActivityVideoTrim.e(a));
      ActivityVideoTrim.c(a).a(a);
      ActivityVideoTrim.c(a).prepareAsync();
      ActivityVideoTrim.c(a).setOnPreparedListener(new d(this));
      return;
    }
    catch (IOException paramSurfaceTexture)
    {
      YelpLog.e("ActivityVideoTrim", "Media player cannot open " + ActivityVideoTrim.b(a).getFilePath(), paramSurfaceTexture);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */