package com.yelp.android.ui.activities.videotrim;

import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import com.yelp.android.serializable.LocalVideo;
import com.yelp.android.util.YelpLog;
import java.io.IOException;

class ActivityVideoTrim$3
  extends c
{
  ActivityVideoTrim$3(ActivityVideoTrim paramActivityVideoTrim) {}
  
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    try
    {
      ActivityVideoTrim.a(a, new BetterMediaPlayer());
      ActivityVideoTrim.c(a).setDataSource(ActivityVideoTrim.b(a).e());
      ActivityVideoTrim.c(a).a(ActivityVideoTrim.d(a), ActivityVideoTrim.e(a));
      ActivityVideoTrim.c(a).a(a);
      ActivityVideoTrim.c(a).prepareAsync();
      ActivityVideoTrim.c(a).setOnPreparedListener(new MediaPlayer.OnPreparedListener()
      {
        public void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
        {
          ActivityVideoTrim.c(a).start();
          ActivityVideoTrim.f(a).a(ActivityVideoTrim.c(a));
        }
      });
      return;
    }
    catch (IOException paramSurfaceTexture)
    {
      YelpLog.e("ActivityVideoTrim", "Media player cannot open " + ActivityVideoTrim.b(a).e(), paramSurfaceTexture);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.ActivityVideoTrim.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */