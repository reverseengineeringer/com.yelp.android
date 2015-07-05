package com.yelp.android.ui.activities.camera;

import android.graphics.SurfaceTexture;
import android.support.v4.app.FragmentActivity;
import android.widget.ImageView;
import com.yelp.android.ui.activities.videotrim.BetterMediaPlayer;
import com.yelp.android.ui.activities.videotrim.q;
import com.yelp.android.util.YelpLog;
import java.io.IOException;

class y
  extends q
{
  y(VideoPreviewFragment paramVideoPreviewFragment) {}
  
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    try
    {
      if (VideoPreviewFragment.a(a) == null) {
        VideoPreviewFragment.a(a, new BetterMediaPlayer());
      }
      VideoPreviewFragment.a(a).setDataSource(VideoPreviewFragment.b(a));
      VideoPreviewFragment.a(a).a(VideoPreviewFragment.c(a), (ImageView)a.getActivity().findViewById(2131493308));
      VideoPreviewFragment.a(a).prepareAsync();
      VideoPreviewFragment.a(a).setOnPreparedListener(VideoPreviewFragment.d(a));
      return;
    }
    catch (IOException paramSurfaceTexture)
    {
      YelpLog.e("VideoPreviewFragment", "Unable to start media player.", paramSurfaceTexture);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */