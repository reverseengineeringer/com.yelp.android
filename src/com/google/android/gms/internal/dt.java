package com.google.android.gms.internal;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.MediaController;
import android.widget.VideoView;
import java.util.HashMap;
import java.util.Map;

@ey
public final class dt
  extends FrameLayout
  implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener
{
  private final gu mo;
  private final MediaController so;
  private final dt.a sp;
  private final VideoView sq;
  private long sr;
  private String ss;
  
  public dt(Context paramContext, gu paramgu)
  {
    super(paramContext);
    mo = paramgu;
    sq = new VideoView(paramContext);
    paramgu = new FrameLayout.LayoutParams(-1, -1, 17);
    addView(sq, paramgu);
    so = new MediaController(paramContext);
    sp = new dt.a(this);
    sp.cs();
    sq.setOnCompletionListener(this);
    sq.setOnPreparedListener(this);
    sq.setOnErrorListener(this);
  }
  
  private static void a(gu paramgu, String paramString)
  {
    a(paramgu, paramString, new HashMap(1));
  }
  
  public static void a(gu paramgu, String paramString1, String paramString2)
  {
    int i;
    if (paramString2 == null)
    {
      i = 1;
      if (i == 0) {
        break label60;
      }
    }
    label60:
    for (int j = 2;; j = 3)
    {
      HashMap localHashMap = new HashMap(j);
      localHashMap.put("what", paramString1);
      if (i == 0) {
        localHashMap.put("extra", paramString2);
      }
      a(paramgu, "error", localHashMap);
      return;
      i = 0;
      break;
    }
  }
  
  private static void a(gu paramgu, String paramString1, String paramString2, String paramString3)
  {
    HashMap localHashMap = new HashMap(2);
    localHashMap.put(paramString2, paramString3);
    a(paramgu, paramString1, localHashMap);
  }
  
  private static void a(gu paramgu, String paramString, Map<String, String> paramMap)
  {
    paramMap.put("event", paramString);
    paramgu.a("onVideoEvent", paramMap);
  }
  
  public void C(String paramString)
  {
    ss = paramString;
  }
  
  public void b(MotionEvent paramMotionEvent)
  {
    sq.dispatchTouchEvent(paramMotionEvent);
  }
  
  public void cq()
  {
    if (!TextUtils.isEmpty(ss))
    {
      sq.setVideoPath(ss);
      return;
    }
    a(mo, "no_src", null);
  }
  
  public void cr()
  {
    long l = sq.getCurrentPosition();
    if (sr != l)
    {
      float f = (float)l / 1000.0F;
      a(mo, "timeupdate", "time", String.valueOf(f));
      sr = l;
    }
  }
  
  public void destroy()
  {
    sp.cancel();
    sq.stopPlayback();
  }
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    a(mo, "ended");
  }
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    a(mo, String.valueOf(paramInt1), String.valueOf(paramInt2));
    return true;
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    float f = sq.getDuration() / 1000.0F;
    a(mo, "canplaythrough", "duration", String.valueOf(f));
  }
  
  public void pause()
  {
    sq.pause();
  }
  
  public void play()
  {
    sq.start();
  }
  
  public void s(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      sq.setMediaController(so);
      return;
    }
    so.hide();
    sq.setMediaController(null);
  }
  
  public void seekTo(int paramInt)
  {
    sq.seekTo(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */