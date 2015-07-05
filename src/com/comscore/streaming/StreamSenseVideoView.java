package com.comscore.streaming;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.VideoView;
import com.comscore.utils.c;
import java.util.HashMap;
import java.util.Timer;

@Deprecated
public class StreamSenseVideoView
  extends VideoView
{
  private final String a = "StreamSenseVideoView";
  private final boolean b = true;
  private final int c = 500;
  private final int d = 500;
  private long e = -1L;
  private a f = null;
  private String g = "0x0";
  private long h = 0L;
  private long i = -1L;
  private String j;
  private boolean k = false;
  private Timer l = null;
  private Timer m = null;
  private MediaPlayer.OnCompletionListener n = null;
  private final MediaPlayer.OnCompletionListener o = new n(this);
  
  public StreamSenseVideoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    h();
  }
  
  public StreamSenseVideoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    h();
  }
  
  private void a(MediaPlayer paramMediaPlayer)
  {
    c.a("StreamSenseVideoView", "onPlaybackCompleted");
    c(i(), getCurrentPlayerSafePosition());
  }
  
  private void a(HashMap<String, String> paramHashMap)
  {
    try
    {
      f();
      if (l == null)
      {
        long l1 = getCurrentPlayerSafePosition();
        c.a("StreamSenseVideoView", "startStartTimer:" + l1);
        l = new Timer();
        l.schedule(new l(this, l1, paramHashMap), 500L);
      }
      return;
    }
    finally
    {
      paramHashMap = finally;
      throw paramHashMap;
    }
  }
  
  private void a(HashMap<String, String> paramHashMap, long paramLong)
  {
    f();
    d();
    if (f != null) {
      f.a(StreamSenseEventType.END, paramHashMap, paramLong);
    }
  }
  
  private boolean a()
  {
    try
    {
      boolean bool = isPlaying();
      return bool;
    }
    catch (IllegalStateException localIllegalStateException) {}
    return false;
  }
  
  private void b(HashMap<String, String> paramHashMap, long paramLong)
  {
    k = false;
    d();
    if (f != null) {
      f.a(StreamSenseEventType.PLAY, paramHashMap, paramLong);
    }
  }
  
  private boolean b()
  {
    return k;
  }
  
  private void c()
  {
    c.a("StreamSenseVideoView", "onPauseForBuffering");
    k = true;
    i = System.currentTimeMillis();
    if (a())
    {
      c(i(), getCurrentPlayerSafePosition());
      e();
    }
  }
  
  private void c(HashMap<String, String> paramHashMap, long paramLong)
  {
    if ((!d()) && (f != null)) {
      f.a(StreamSenseEventType.PAUSE, paramHashMap, paramLong);
    }
  }
  
  /* Error */
  private boolean d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 59	com/comscore/streaming/StreamSenseVideoView:l	Ljava/util/Timer;
    //   6: ifnull +28 -> 34
    //   9: ldc 33
    //   11: ldc -72
    //   13: invokestatic 91	com/comscore/utils/c:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   16: aload_0
    //   17: getfield 59	com/comscore/streaming/StreamSenseVideoView:l	Ljava/util/Timer;
    //   20: invokevirtual 187	java/util/Timer:cancel	()V
    //   23: aload_0
    //   24: aconst_null
    //   25: putfield 59	com/comscore/streaming/StreamSenseVideoView:l	Ljava/util/Timer;
    //   28: iconst_1
    //   29: istore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: iload_1
    //   33: ireturn
    //   34: iconst_0
    //   35: istore_1
    //   36: goto -6 -> 30
    //   39: astore_2
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_2
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	StreamSenseVideoView
    //   29	7	1	bool	boolean
    //   39	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	28	39	finally
  }
  
  private void e()
  {
    a(i());
  }
  
  /* Error */
  private boolean f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 33
    //   4: ldc -66
    //   6: invokestatic 91	com/comscore/utils/c:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   9: aload_0
    //   10: getfield 61	com/comscore/streaming/StreamSenseVideoView:m	Ljava/util/Timer;
    //   13: ifnull +21 -> 34
    //   16: aload_0
    //   17: getfield 61	com/comscore/streaming/StreamSenseVideoView:m	Ljava/util/Timer;
    //   20: invokevirtual 187	java/util/Timer:cancel	()V
    //   23: aload_0
    //   24: aconst_null
    //   25: putfield 61	com/comscore/streaming/StreamSenseVideoView:m	Ljava/util/Timer;
    //   28: iconst_1
    //   29: istore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: iload_1
    //   33: ireturn
    //   34: iconst_0
    //   35: istore_1
    //   36: goto -6 -> 30
    //   39: astore_2
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_2
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	StreamSenseVideoView
    //   29	7	1	bool	boolean
    //   39	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	28	39	finally
  }
  
  private void g()
  {
    try
    {
      if (m == null)
      {
        c.a("StreamSenseVideoView", "startPlayingPollTimer");
        long l1 = getCurrentPlayerSafePosition();
        m = new Timer();
        m.schedule(new m(this, l1), 250L);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private long getCurrentPlayerSafePosition()
  {
    try
    {
      int i1 = getCurrentPosition();
      return i1;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      c.b("StreamSenseVideoView", "getCurrentSafePlayerPosition");
    }
    return 0L;
  }
  
  private HashMap<String, String> getPlayerMetadata()
  {
    HashMap localHashMap = new HashMap();
    if (e <= 0L) {
      e = getDuration();
    }
    localHashMap.put("ns_st_cl", String.valueOf(e));
    if ((g == null) || (g.equals("0x0"))) {
      g = (getWidth() + "x" + getHeight());
    }
    localHashMap.put("ns_st_cs", g);
    localHashMap.put("ns_st_cu", j);
    localHashMap.put("ns_st_mp", StreamSenseVideoView.class.getSimpleName());
    localHashMap.put("ns_st_mv", Integer.toString(Build.VERSION.SDK_INT));
    return localHashMap;
  }
  
  private void h()
  {
    super.setOnCompletionListener(o);
  }
  
  private HashMap<String, String> i()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("ns_ts", String.valueOf(System.currentTimeMillis()));
    localHashMap.putAll(getPlayerMetadata());
    return localHashMap;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    c.a("StreamSenseVideoView", "onDetachedFromWindow");
    a(i(), getCurrentPlayerSafePosition());
  }
  
  public void pause()
  {
    super.pause();
    c.a("StreamSenseVideoView", "pause");
    f();
    if (k) {
      h += System.currentTimeMillis() - i;
    }
    k = false;
    i = -1L;
    c(i(), getCurrentPlayerSafePosition());
  }
  
  @TargetApi(8)
  public void resume()
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.resume();
    }
    c.a("StreamSenseVideoView", "resume");
    b(i(), getCurrentPlayerSafePosition());
  }
  
  public void seekTo(int paramInt)
  {
    super.seekTo(paramInt);
    c.a("StreamSenseVideoView", "seekTo:" + paramInt);
    if (a())
    {
      f();
      d();
      c(i(), -1L);
      e();
    }
  }
  
  public void setOnCompletionListener(MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    super.setOnCompletionListener(o);
    n = paramOnCompletionListener;
  }
  
  public void setStreamSense(a parama)
  {
    f = parama;
    f.a("ns_st_pv", "4.1307.02");
  }
  
  public void setVideoPath(String paramString)
  {
    super.setVideoPath(paramString);
    j = paramString;
  }
  
  public void setVideoURI(Uri paramUri)
  {
    super.setVideoURI(paramUri);
    j = paramUri.toString();
  }
  
  public void start()
  {
    super.start();
    if (l == null)
    {
      c.a("StreamSenseVideoView", "start");
      e();
    }
  }
  
  public void stopPlayback()
  {
    super.stopPlayback();
    c.a("StreamSenseVideoView", "stopPlayback");
    a(i(), getCurrentPlayerSafePosition());
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.StreamSenseVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */