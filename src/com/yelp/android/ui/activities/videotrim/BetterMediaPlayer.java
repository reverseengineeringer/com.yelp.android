package com.yelp.android.ui.activities.videotrim;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.view.Surface;
import android.view.TextureView;
import android.widget.ImageView;
import java.util.Timer;
import java.util.TimerTask;

@TargetApi(14)
public class BetterMediaPlayer
  extends MediaPlayer
{
  private BetterMediaPlayer.PlayerState a;
  private boolean b;
  private boolean c;
  private float d;
  private float e;
  private int f;
  private TextureView g;
  private ImageView h;
  private MediaPlayer.OnSeekCompleteListener i;
  private MediaPlayer.OnCompletionListener j;
  private j k;
  private Timer l;
  
  public BetterMediaPlayer()
  {
    a(BetterMediaPlayer.PlayerState.NORMAL);
    l = new Timer();
    b = super.isPlaying();
    c = super.isLooping();
    e = 1.0F;
    d = 1.0F;
    super.setOnCompletionListener(new e(this));
  }
  
  private void a(int paramInt)
  {
    paramInt = Math.max(0, paramInt);
    l.cancel();
    k localk = new k(this, null);
    if (paramInt < 100)
    {
      localk.run();
      return;
    }
    l = new Timer();
    l.schedule(localk, paramInt);
  }
  
  private void a(Bitmap paramBitmap)
  {
    h.post(new g(this, paramBitmap));
    l.cancel();
  }
  
  private void a(BetterMediaPlayer.PlayerState paramPlayerState)
  {
    BetterMediaPlayer.PlayerState localPlayerState = a;
    a = paramPlayerState;
    if ((paramPlayerState != localPlayerState) && (k != null)) {
      k.a(localPlayerState, paramPlayerState);
    }
  }
  
  private void b()
  {
    h.post(new h(this));
    l.cancel();
  }
  
  public int a()
  {
    return super.getCurrentPosition();
  }
  
  public void a(TextureView paramTextureView, ImageView paramImageView)
  {
    super.setSurface(new Surface(paramTextureView.getSurfaceTexture()));
    g = paramTextureView;
    h = paramImageView;
  }
  
  public void a(j paramj)
  {
    k = paramj;
  }
  
  public int getCurrentPosition()
  {
    if (a == BetterMediaPlayer.PlayerState.NORMAL) {
      return super.getCurrentPosition();
    }
    return f;
  }
  
  public boolean isPlaying()
  {
    return (a == BetterMediaPlayer.PlayerState.NORMAL) && (super.isPlaying());
  }
  
  public void pause()
  {
    if (a == BetterMediaPlayer.PlayerState.NORMAL) {
      super.pause();
    }
    b = false;
  }
  
  public void release()
  {
    super.release();
    l.cancel();
  }
  
  public void seekTo(int paramInt)
  {
    f = paramInt;
    super.setOnSeekCompleteListener(new i(this, paramInt));
    if (a == BetterMediaPlayer.PlayerState.NORMAL)
    {
      super.start();
      super.pause();
      a(BetterMediaPlayer.PlayerState.GETTING_FREEZE_PHOTO);
      g.post(new f(this, paramInt));
    }
    int m;
    do
    {
      return;
      m = super.getCurrentPosition();
    } while ((m <= paramInt + 100) && (m >= paramInt - 2000));
    a(BetterMediaPlayer.PlayerState.LOOKING_FOR_KEYFRAME);
    super.seekTo(paramInt);
    l.cancel();
  }
  
  public void setLooping(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void setOnCompletionListener(MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    j = paramOnCompletionListener;
  }
  
  public void setOnSeekCompleteListener(MediaPlayer.OnSeekCompleteListener paramOnSeekCompleteListener)
  {
    i = paramOnSeekCompleteListener;
  }
  
  @Deprecated
  public void setSurface(Surface paramSurface)
  {
    throw new UnsupportedOperationException("Use setSurface(TextureView, ImageView) instead");
  }
  
  public void setVolume(float paramFloat1, float paramFloat2)
  {
    if (a == BetterMediaPlayer.PlayerState.NORMAL) {
      super.setVolume(paramFloat1, paramFloat2);
    }
    e = paramFloat1;
    d = paramFloat2;
  }
  
  public void start()
  {
    if (a == BetterMediaPlayer.PlayerState.NORMAL) {
      super.start();
    }
    b = true;
  }
  
  public void stop()
  {
    super.stop();
    a(BetterMediaPlayer.PlayerState.NORMAL);
    b = false;
    l.cancel();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.BetterMediaPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */