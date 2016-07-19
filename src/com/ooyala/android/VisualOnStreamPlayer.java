package com.ooyala.android;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.AssetManager;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.visualon.OSMPBasePlayer.voOSBasePlayer;
import com.visualon.OSMPBasePlayer.voOSBasePlayer.onEventListener;
import com.visualon.OSMPBasePlayer.voOSBasePlayer.onRequestListener;
import com.visualon.OSMPSubTitle.voSubTitleManager.voSubtitleDisplayInfo;
import com.visualon.OSMPSubTitle.voSubTitleManager.voSubtitleInfo;
import com.visualon.OSMPSubTitle.voSubTitleManager.voSubtitleInfoEntry;
import com.visualon.OSMPSubTitle.voSubTitleManager.voSubtitleTextInfoEntry;
import com.visualon.OSMPSubTitle.voSubTitleManager.voSubtitleTextRowInfo;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

class VisualOnStreamPlayer
  extends StreamPlayer
  implements SurfaceHolder.Callback, voOSBasePlayer.onEventListener, voOSBasePlayer.onRequestListener
{
  private static final String TAG = "VisualOnStreamPlayer";
  protected static final long TIMER_DELAY = 0L;
  protected static final long TIMER_PERIOD = 250L;
  private boolean _completedQueued = false;
  protected SurfaceHolder _holder = null;
  private boolean _isLiveClosedCaptionsAvailable = false;
  private boolean _isLiveClosedCaptionsEnabled = false;
  private int _lastPlayhead = -1;
  private boolean _playQueued = false;
  protected voOSBasePlayer _player = null;
  protected Timer _playheadUpdateTimer = null;
  private final Handler _playheadUpdateTimerHandler = new Handler(new Handler.Callback()
  {
    public boolean handleMessage(Message paramAnonymousMessage)
    {
      setChanged();
      notifyObservers("timeChanged");
      return false;
    }
  });
  private OoyalaPlayer.State _stateBeforeSuspend = OoyalaPlayer.State.INIT;
  protected String _streamUrl = "";
  private int _timeBeforeSuspend = -1;
  protected int _videoHeight = 9;
  protected int _videoWidth = 16;
  
  private static void copyfile(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      paramString1 = paramContext.getAssets().open(paramString1);
      paramContext = new File(paramContext.getFilesDir().getParentFile().getPath() + "/" + paramString2);
      paramContext.createNewFile();
      paramContext = new FileOutputStream(paramContext);
      paramString2 = new byte['က'];
      for (;;)
      {
        int i = paramString1.read(paramString2);
        if (i == -1) {
          break;
        }
        paramContext.write(paramString2, 0, i);
      }
      paramContext.flush();
    }
    catch (IOException paramContext)
    {
      paramContext.printStackTrace();
      return;
    }
    paramContext.close();
  }
  
  private void dequeueAll()
  {
    dequeueCompleted();
    dequeuePlay();
  }
  
  private void dequeueCompleted()
  {
    if (_completedQueued)
    {
      _playQueued = false;
      _completedQueued = false;
      setState(OoyalaPlayer.State.COMPLETED);
    }
  }
  
  private void dequeuePlay()
  {
    if (_playQueued) {}
    switch (_state)
    {
    default: 
      return;
    }
    _playQueued = false;
    play();
  }
  
  private void queueCompleted()
  {
    _completedQueued = true;
  }
  
  private void queuePlay()
  {
    _playQueued = true;
  }
  
  private void removeView()
  {
    if (_parent != null) {
      _parent.getLayout().removeView(_view);
    }
    if (_holder != null) {
      _holder.removeCallback(this);
    }
    _view = null;
    _holder = null;
  }
  
  @TargetApi(11)
  private void setupView()
  {
    if (_view != null)
    {
      Log.e("VisualOnStreamPlayer", "DANGER DANGER: setupView while we still have a view");
      return;
    }
    _view = new SurfaceView(_parent.getLayout().getContext())
    {
      protected void onMeasure(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        Log.v("VisualOnStreamPlayer", "MEASURE SPEC: " + View.MeasureSpec.toString(paramAnonymousInt1) + "," + View.MeasureSpec.toString(paramAnonymousInt2));
        int i = View.MeasureSpec.getSize(paramAnonymousInt1);
        paramAnonymousInt1 = View.MeasureSpec.getSize(paramAnonymousInt2);
        Log.v("VisualOnStreamPlayer", "MEASURE PARENT: " + _parent.getLayout().getMeasuredWidth() + "," + _parent.getLayout().getMeasuredHeight());
        paramAnonymousInt2 = _videoHeight * i / _videoWidth;
        if ((paramAnonymousInt1 - paramAnonymousInt2) / 2 < 0)
        {
          paramAnonymousInt2 = _videoWidth * paramAnonymousInt1 / _videoHeight;
          i = (i - paramAnonymousInt2) / 2;
        }
        for (;;)
        {
          setMeasuredDimension(paramAnonymousInt2, paramAnonymousInt1);
          Log.v("VisualOnStreamPlayer", "MEASURED: " + paramAnonymousInt2 + "," + paramAnonymousInt1);
          return;
          paramAnonymousInt1 = paramAnonymousInt2;
          paramAnonymousInt2 = i;
        }
      }
    };
    _view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
    _parent.getLayout().addView(_view);
    _holder = _view.getHolder();
    _holder.addCallback(this);
    _holder.setType(0);
    _holder.setFormat(1);
  }
  
  public String GetCCString(voSubTitleManager.voSubtitleInfo paramvoSubtitleInfo)
  {
    if (paramvoSubtitleInfo == null) {
      localObject2 = "";
    }
    Object localObject1;
    int i;
    do
    {
      return (String)localObject2;
      if (paramvoSubtitleInfo.getSubtitleEntry() == null) {
        return "";
      }
      localObject1 = "";
      i = 0;
      localObject2 = localObject1;
    } while (i >= paramvoSubtitleInfo.getSubtitleEntry().size());
    voSubTitleManager.voSubtitleDisplayInfo localvoSubtitleDisplayInfo = ((voSubTitleManager.voSubtitleInfoEntry)paramvoSubtitleInfo.getSubtitleEntry().get(i)).getSubtitleDispInfo();
    Object localObject2 = localObject1;
    Object localObject3;
    if (localvoSubtitleDisplayInfo.getTextRowInfo() != null)
    {
      int j = 0;
      localObject2 = localObject1;
      if (j < localvoSubtitleDisplayInfo.getTextRowInfo().size())
      {
        voSubTitleManager.voSubtitleTextRowInfo localvoSubtitleTextRowInfo = (voSubTitleManager.voSubtitleTextRowInfo)localvoSubtitleDisplayInfo.getTextRowInfo().get(j);
        if (localvoSubtitleTextRowInfo == null) {
          localObject3 = localObject1;
        }
        label111:
        do
        {
          do
          {
            j += 1;
            localObject1 = localObject3;
            break;
            localObject3 = localObject1;
          } while (localvoSubtitleTextRowInfo.getTextInfoEntry() == null);
          localObject2 = "";
          int k = 0;
          while (k < localvoSubtitleTextRowInfo.getTextInfoEntry().size())
          {
            localObject2 = (String)localObject2 + ((voSubTitleManager.voSubtitleTextInfoEntry)localvoSubtitleTextRowInfo.getTextInfoEntry().get(k)).getStringText();
            k += 1;
          }
          localObject3 = localObject1;
        } while (((String)localObject2).length() <= 0);
        if (((String)localObject1).length() <= 0) {
          break label278;
        }
        localObject1 = (String)localObject1 + "\n";
      }
    }
    label278:
    for (;;)
    {
      localObject3 = (String)localObject1 + (String)localObject2;
      break label111;
      i += 1;
      localObject1 = localObject2;
      break;
    }
  }
  
  public int buffer()
  {
    return _buffer;
  }
  
  /* Error */
  protected void createMediaPlayer()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   4: ifnonnull +370 -> 374
    //   7: aload_0
    //   8: new 339	com/visualon/OSMPBasePlayer/voOSBasePlayer
    //   11: dup
    //   12: invokespecial 340	com/visualon/OSMPBasePlayer/voOSBasePlayer:<init>	()V
    //   15: putfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   18: new 129	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   25: aload_0
    //   26: getfield 216	com/ooyala/android/VisualOnStreamPlayer:_parent	Lcom/ooyala/android/OoyalaPlayer;
    //   29: invokevirtual 222	com/ooyala/android/OoyalaPlayer:getLayout	()Landroid/widget/FrameLayout;
    //   32: invokevirtual 253	android/widget/FrameLayout:getContext	()Landroid/content/Context;
    //   35: invokevirtual 134	android/content/Context:getFilesDir	()Ljava/io/File;
    //   38: invokevirtual 137	java/io/File:getParentFile	()Ljava/io/File;
    //   41: invokevirtual 141	java/io/File:getPath	()Ljava/lang/String;
    //   44: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc_w 342
    //   50: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   56: astore_2
    //   57: aload_0
    //   58: getfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   61: aload_0
    //   62: getfield 216	com/ooyala/android/VisualOnStreamPlayer:_parent	Lcom/ooyala/android/OoyalaPlayer;
    //   65: invokevirtual 222	com/ooyala/android/OoyalaPlayer:getLayout	()Landroid/widget/FrameLayout;
    //   68: invokevirtual 253	android/widget/FrameLayout:getContext	()Landroid/content/Context;
    //   71: aload_2
    //   72: aconst_null
    //   73: iconst_0
    //   74: iconst_0
    //   75: iconst_0
    //   76: invokevirtual 346	com/visualon/OSMPBasePlayer/voOSBasePlayer:Init	(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)I
    //   79: istore_1
    //   80: iload_1
    //   81: ifne +317 -> 398
    //   84: ldc 23
    //   86: ldc_w 348
    //   89: invokestatic 351	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   92: pop
    //   93: new 353	android/util/DisplayMetrics
    //   96: dup
    //   97: invokespecial 354	android/util/DisplayMetrics:<init>	()V
    //   100: astore_2
    //   101: aload_0
    //   102: getfield 226	com/ooyala/android/VisualOnStreamPlayer:_view	Landroid/view/SurfaceView;
    //   105: invokevirtual 355	android/view/SurfaceView:getContext	()Landroid/content/Context;
    //   108: ldc_w 357
    //   111: invokevirtual 361	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   114: checkcast 363	android/view/WindowManager
    //   117: invokeinterface 367 1 0
    //   122: aload_2
    //   123: invokevirtual 373	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   126: aload_0
    //   127: getfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   130: aload_2
    //   131: getfield 376	android/util/DisplayMetrics:widthPixels	I
    //   134: aload_2
    //   135: getfield 379	android/util/DisplayMetrics:heightPixels	I
    //   138: invokevirtual 383	com/visualon/OSMPBasePlayer/voOSBasePlayer:SetDisplaySize	(II)V
    //   141: aload_0
    //   142: getfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   145: aload_0
    //   146: getfield 226	com/ooyala/android/VisualOnStreamPlayer:_view	Landroid/view/SurfaceView;
    //   149: invokevirtual 387	com/visualon/OSMPBasePlayer/voOSBasePlayer:SetView	(Landroid/view/SurfaceView;)V
    //   152: aload_0
    //   153: getfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   156: aload_0
    //   157: invokevirtual 391	com/visualon/OSMPBasePlayer/voOSBasePlayer:setEventListener	(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;)V
    //   160: aload_0
    //   161: getfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   164: ldc_w 392
    //   167: ldc_w 394
    //   170: invokevirtual 398	com/visualon/OSMPBasePlayer/voOSBasePlayer:SetParam	(ILjava/lang/Object;)I
    //   173: pop
    //   174: aload_0
    //   175: getfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   178: ldc_w 399
    //   181: ldc_w 401
    //   184: invokevirtual 398	com/visualon/OSMPBasePlayer/voOSBasePlayer:SetParam	(ILjava/lang/Object;)I
    //   187: pop
    //   188: aload_0
    //   189: getfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   192: bipush 9
    //   194: ldc_w 403
    //   197: invokevirtual 398	com/visualon/OSMPBasePlayer/voOSBasePlayer:SetParam	(ILjava/lang/Object;)I
    //   200: pop
    //   201: ldc_w 404
    //   204: newarray <illegal type>
    //   206: astore_2
    //   207: aload_0
    //   208: getfield 226	com/ooyala/android/VisualOnStreamPlayer:_view	Landroid/view/SurfaceView;
    //   211: invokevirtual 355	android/view/SurfaceView:getContext	()Landroid/content/Context;
    //   214: invokevirtual 119	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   217: ldc_w 406
    //   220: invokevirtual 125	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   223: astore_3
    //   224: aload_3
    //   225: aload_2
    //   226: invokevirtual 168	java/io/InputStream:read	([B)I
    //   229: pop
    //   230: aload_3
    //   231: invokevirtual 407	java/io/InputStream:close	()V
    //   234: aload_0
    //   235: getfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   238: bipush 43
    //   240: aload_2
    //   241: invokevirtual 398	com/visualon/OSMPBasePlayer/voOSBasePlayer:SetParam	(ILjava/lang/Object;)I
    //   244: pop
    //   245: aload_0
    //   246: getfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   249: bipush 8
    //   251: iconst_0
    //   252: invokestatic 413	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   255: invokevirtual 398	com/visualon/OSMPBasePlayer/voOSBasePlayer:SetParam	(ILjava/lang/Object;)I
    //   258: pop
    //   259: aload_0
    //   260: getfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   263: sipush 10496
    //   266: iconst_1
    //   267: invokestatic 413	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   270: invokevirtual 398	com/visualon/OSMPBasePlayer/voOSBasePlayer:SetParam	(ILjava/lang/Object;)I
    //   273: pop
    //   274: new 129	java/lang/StringBuilder
    //   277: dup
    //   278: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   281: aload_0
    //   282: getfield 216	com/ooyala/android/VisualOnStreamPlayer:_parent	Lcom/ooyala/android/OoyalaPlayer;
    //   285: invokevirtual 222	com/ooyala/android/OoyalaPlayer:getLayout	()Landroid/widget/FrameLayout;
    //   288: invokevirtual 253	android/widget/FrameLayout:getContext	()Landroid/content/Context;
    //   291: invokevirtual 134	android/content/Context:getFilesDir	()Ljava/io/File;
    //   294: invokevirtual 137	java/io/File:getParentFile	()Ljava/io/File;
    //   297: invokevirtual 141	java/io/File:getPath	()Ljava/lang/String;
    //   300: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   303: ldc -109
    //   305: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   308: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   311: astore_2
    //   312: new 129	java/lang/StringBuilder
    //   315: dup
    //   316: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   319: aload_2
    //   320: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: ldc_w 415
    //   326: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   329: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   332: astore_2
    //   333: aload_0
    //   334: getfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   337: ldc_w 416
    //   340: aload_2
    //   341: invokevirtual 398	com/visualon/OSMPBasePlayer/voOSBasePlayer:SetParam	(ILjava/lang/Object;)I
    //   344: pop
    //   345: aload_0
    //   346: getfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   349: aload_0
    //   350: getfield 63	com/ooyala/android/VisualOnStreamPlayer:_streamUrl	Ljava/lang/String;
    //   353: bipush 33
    //   355: iconst_0
    //   356: iconst_0
    //   357: iconst_0
    //   358: invokevirtual 420	com/visualon/OSMPBasePlayer/voOSBasePlayer:Open	(Ljava/lang/Object;IIII)I
    //   361: ifne +57 -> 418
    //   364: ldc 23
    //   366: ldc_w 422
    //   369: invokestatic 351	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   372: pop
    //   373: return
    //   374: ldc 23
    //   376: ldc_w 424
    //   379: invokestatic 249	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   382: pop
    //   383: aload_0
    //   384: getfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   387: invokevirtual 427	com/visualon/OSMPBasePlayer/voOSBasePlayer:Uninit	()I
    //   390: pop
    //   391: return
    //   392: astore_2
    //   393: aload_2
    //   394: invokevirtual 428	java/lang/Throwable:printStackTrace	()V
    //   397: return
    //   398: aload_0
    //   399: aload_0
    //   400: getfield 57	com/ooyala/android/VisualOnStreamPlayer:_player	Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    //   403: iload_1
    //   404: iconst_0
    //   405: invokevirtual 432	com/ooyala/android/VisualOnStreamPlayer:onError	(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;II)Z
    //   408: pop
    //   409: return
    //   410: astore_3
    //   411: aload_3
    //   412: invokevirtual 175	java/io/IOException:printStackTrace	()V
    //   415: goto -181 -> 234
    //   418: aload_0
    //   419: getfield 216	com/ooyala/android/VisualOnStreamPlayer:_parent	Lcom/ooyala/android/OoyalaPlayer;
    //   422: invokevirtual 222	com/ooyala/android/OoyalaPlayer:getLayout	()Landroid/widget/FrameLayout;
    //   425: invokevirtual 253	android/widget/FrameLayout:getContext	()Landroid/content/Context;
    //   428: new 129	java/lang/StringBuilder
    //   431: dup
    //   432: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   435: ldc_w 434
    //   438: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   441: aload_0
    //   442: getfield 63	com/ooyala/android/VisualOnStreamPlayer:_streamUrl	Ljava/lang/String;
    //   445: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   448: ldc_w 436
    //   451: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   454: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   457: iconst_1
    //   458: invokestatic 442	android/widget/Toast:makeText	(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    //   461: invokevirtual 445	android/widget/Toast:show	()V
    //   464: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	465	0	this	VisualOnStreamPlayer
    //   79	325	1	i	int
    //   56	285	2	localObject	Object
    //   392	2	2	localThrowable	Throwable
    //   223	8	3	localInputStream	InputStream
    //   410	2	3	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   0	80	392	java/lang/Throwable
    //   84	207	392	java/lang/Throwable
    //   207	234	392	java/lang/Throwable
    //   234	373	392	java/lang/Throwable
    //   374	391	392	java/lang/Throwable
    //   398	409	392	java/lang/Throwable
    //   411	415	392	java/lang/Throwable
    //   418	464	392	java/lang/Throwable
    //   207	234	410	java/io/IOException
  }
  
  protected void currentItemCompleted()
  {
    stopPlayheadTimer();
    setState(OoyalaPlayer.State.COMPLETED);
  }
  
  public int currentTime()
  {
    if (_player == null) {
      return 0;
    }
    switch (_state)
    {
    }
    return _player.GetPos();
  }
  
  public void destroy()
  {
    if (_player != null)
    {
      stop();
      _player.Uninit();
      _player = null;
    }
    removeView();
    _buffer = 0;
    _playQueued = false;
    _timeBeforeSuspend = -1;
    _state = OoyalaPlayer.State.INIT;
  }
  
  public int duration()
  {
    if (_player == null) {
      return 0;
    }
    switch (_state)
    {
    }
    return _player.GetDuration();
  }
  
  public OoyalaPlayer.SeekStyle getSeekStyle()
  {
    return OoyalaPlayer.SeekStyle.BASIC;
  }
  
  public void init(OoyalaPlayer paramOoyalaPlayer, Set<Stream> paramSet)
  {
    Log.d(getClass().getName(), "Using VOPlayer");
    paramSet = Stream.bestStream(paramSet);
    if (paramSet == null)
    {
      Log.e(getClass().getName(), "ERROR: Invalid Stream (no valid stream available)");
      _error = "Invalid Stream";
      setState(OoyalaPlayer.State.ERROR);
      return;
    }
    if (paramOoyalaPlayer == null)
    {
      _error = "Invalid Parent";
      setState(OoyalaPlayer.State.ERROR);
      return;
    }
    setState(OoyalaPlayer.State.LOADING);
    _streamUrl = paramSet.decodedURL().toString();
    setParent(paramOoyalaPlayer);
    copyfile(_parent.getLayout().getContext(), "voVidDec.dat", "voVidDec.dat");
    copyfile(_parent.getLayout().getContext(), "cap.xml", "cap.xml");
    setupView();
  }
  
  public boolean isLiveClosedCaptionsAvailable()
  {
    return _isLiveClosedCaptionsAvailable;
  }
  
  public boolean onError(voOSBasePlayer paramvoOSBasePlayer, int paramInt1, int paramInt2)
  {
    _error = ("voOSPBasePlayer Error: " + paramInt1 + " " + paramInt2);
    setState(OoyalaPlayer.State.ERROR);
    return false;
  }
  
  public int onEvent(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    if (paramInt1 == 33554448) {
      setState(OoyalaPlayer.State.READY);
    }
    do
    {
      return 0;
      if (paramInt1 == 33554480)
      {
        _view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
        switch (paramInt2)
        {
        default: 
          return 0;
        case 1: 
          Log.v("VisualOnStreamPlayer", "OnEvent VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_BITRATE_CHANGE, param2 is %d . " + paramInt3);
          return 0;
        }
        Log.v("VisualOnStreamPlayer", "OnEvent VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_MEDIATYPE_CHANGE, param2 is %d . " + paramInt3);
        switch (paramInt3)
        {
        default: 
          return 0;
        case 0: 
          Log.v("VisualOnStreamPlayer", "OnEvent VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_MEDIATYPE_CHANGE, VOOSMP_AVAILABLE_PUREAUDIO");
          return 0;
        case 1: 
          Log.v("VisualOnStreamPlayer", "OnEvent VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_MEDIATYPE_CHANGE, VOOSMP_AVAILABLE_PUREVIDEO");
          return 0;
        }
        Log.v("VisualOnStreamPlayer", "OnEvent VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_MEDIATYPE_CHANGE, VOOSMP_AVAILABLE_AUDIOVIDEO");
        return 0;
      }
      if (paramInt1 == -2147483636)
      {
        Log.e("VisualOnStreamPlayer", "onEvent: Error. " + paramInt2);
        onError(_player, 1, 0);
        return 0;
      }
      if (paramInt1 == 1)
      {
        Log.d("VisualOnStreamPlayer", "onEvent: Play Complete");
        currentItemCompleted();
        return 0;
      }
      if (paramInt1 == 13)
      {
        Log.d("VisualOnStreamPlayer", "onEvent: Seek Complete");
        dequeuePlay();
        return 0;
      }
      if (paramInt1 == 2)
      {
        _buffer = paramInt2;
        return 0;
      }
      if (paramInt1 == 15)
      {
        _videoWidth = paramInt2;
        _videoHeight = paramInt3;
        Log.v("VisualOnStreamPlayer", "onEvent: Video Size Changed, " + _videoWidth + ", " + _videoHeight);
        _view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
        return 0;
      }
      if (paramInt1 == 4)
      {
        Log.d("VisualOnStreamPlayer", "onEvent: Buffering Done! " + paramInt2 + ", " + paramInt3);
        return 0;
      }
      if (paramInt1 == 3)
      {
        Log.d("VisualOnStreamPlayer", "onEvent: Buffering Starting " + paramInt2 + ", " + paramInt3);
        return 0;
      }
      if ((paramInt1 == -2113929210) || (paramInt1 == -2113929209) || (paramInt1 == -2113929208) || (paramInt1 == -2113929207) || (paramInt1 == -2113929206) || (paramInt1 == 33554444) || (paramInt1 == -2113929203))
      {
        onError(_player, paramInt1, 0);
        return 0;
      }
      if (paramInt1 == 33554443)
      {
        Log.v("VisualOnStreamPlayer", "OnEvent VOOSMP_SRC_CB_BA_Happened, param is %d . " + paramInt2);
        return 0;
      }
      if (paramInt1 == -2113929202)
      {
        Log.v("VisualOnStreamPlayer", "OnEvent VOOSMP_SRC_CB_Download_Fail_Waiting_Recover, param is %d . " + paramInt2);
        return 0;
      }
      if (paramInt1 == 33554447)
      {
        Log.v("VisualOnStreamPlayer", "OnEvent VOOSMP_SRC_CB_Download_Fail_Recover_Success, param is %d . " + paramInt2);
        return 0;
      }
      if (paramInt1 == 33554448)
      {
        Log.d("VisualOnStreamPlayer", "OnEvent VOOSMP_SRC_CB_Open_Finished, param is %d . " + paramInt2);
        return 0;
      }
      if (paramInt1 != 8193) {
        break;
      }
      paramObject = GetCCString((voSubTitleManager.voSubtitleInfo)paramObject);
      if (!((String)paramObject).equals("")) {
        _isLiveClosedCaptionsAvailable = true;
      }
    } while (!_isLiveClosedCaptionsEnabled);
    _parent.displayClosedCaptionText((String)paramObject);
    return 0;
    Log.v("VisualOnStreamPlayer", "OnEvent UNHANDLED MESSAGE!, id is: " + paramInt1 + ". param is " + paramInt2 + ", " + paramInt3);
    return 0;
  }
  
  public int onRequest(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    Log.i("VisualOnStreamPlayer", "onRequest arg0 is %d" + paramInt1);
    return 0;
  }
  
  public void pause()
  {
    _playQueued = false;
    switch (_state)
    {
    default: 
      return;
    }
    stopPlayheadTimer();
    _player.Pause();
    setState(OoyalaPlayer.State.PAUSED);
  }
  
  public void play()
  {
    _playQueued = false;
    switch (_state)
    {
    default: 
      Log.v("VisualOnStreamPlayer", "Play: invalid status?" + _state);
      return;
    case ???: 
    case ???: 
      queuePlay();
      Log.v("VisualOnStreamPlayer", "Play: still laoding, queued");
      return;
    case ???: 
    case ???: 
    case ???: 
      Log.v("VisualOnStreamPlayer", "Play: ready - about to run");
      if (_timeBeforeSuspend >= 0)
      {
        _player.SetPos(_timeBeforeSuspend);
        _timeBeforeSuspend = -1;
      }
      int i = _player.Run();
      if (i == 0) {
        Log.v("VisualOnStreamPlayer", "MediaPlayer run.");
      }
      for (;;)
      {
        setState(OoyalaPlayer.State.PLAYING);
        startPlayheadTimer();
        return;
        onError(_player, i, 0);
      }
    }
    queuePlay();
    Log.v("VisualOnStreamPlayer", "Play: Suspended already. re-queue" + _state);
  }
  
  public void reset()
  {
    suspend(0, OoyalaPlayer.State.PAUSED);
    setupView();
    resume();
  }
  
  public void resume()
  {
    resume(_timeBeforeSuspend, _stateBeforeSuspend);
  }
  
  public void resume(int paramInt, OoyalaPlayer.State paramState)
  {
    _timeBeforeSuspend = paramInt;
    _stateBeforeSuspend = paramState;
    Log.v("VisualOnStreamPlayer", "Player Resume");
    if ((_stateBeforeSuspend == OoyalaPlayer.State.PLAYING) || (_stateBeforeSuspend == OoyalaPlayer.State.LOADING)) {
      play();
    }
    while (_stateBeforeSuspend != OoyalaPlayer.State.COMPLETED) {
      return;
    }
    queueCompleted();
  }
  
  public void seekToTime(int paramInt)
  {
    if (_player == null) {
      return;
    }
    Log.d("VisualOnStreamPlayer", "Seeking to " + paramInt);
    _player.SetPos(paramInt);
  }
  
  public void setLiveClosedCaptionsEnabled(boolean paramBoolean)
  {
    _isLiveClosedCaptionsEnabled = paramBoolean;
  }
  
  public void setParent(OoyalaPlayer paramOoyalaPlayer)
  {
    super.setParent(paramOoyalaPlayer);
  }
  
  protected void setState(OoyalaPlayer.State paramState)
  {
    Log.v("VisualOnStreamPlayer", "Set State: " + paramState.name());
    super.setState(paramState);
    dequeueAll();
  }
  
  protected void startPlayheadTimer()
  {
    if (_playheadUpdateTimer != null) {
      stopPlayheadTimer();
    }
    _playheadUpdateTimer = new Timer();
    _playheadUpdateTimer.scheduleAtFixedRate(new PlayheadUpdateTimerTask(), 0L, 250L);
  }
  
  public void stop()
  {
    Log.v("VisualOnStreamPlayer", "MediaPlayer stopped.");
    stopPlayheadTimer();
    _playQueued = false;
    _player.Stop();
    _player.Close();
  }
  
  protected void stopPlayheadTimer()
  {
    if (_playheadUpdateTimer != null)
    {
      _playheadUpdateTimer.cancel();
      _playheadUpdateTimer = null;
    }
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    Log.v("VisualOnStreamPlayer", "Surface Changed: " + paramInt2 + "," + paramInt3);
    if (_view != null) {
      _view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
    }
    if (_player != null) {
      _player.SetParam(4135, Integer.valueOf(1));
    }
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    Log.i("VisualOnStreamPlayer", "Surface Created");
    if (_player != null)
    {
      _player.SetParam(51, _view);
      return;
    }
    createMediaPlayer();
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    Log.i("VisualOnStreamPlayer", "Surface Destroyed");
    if (_player != null)
    {
      _player.Stop();
      _player.SetView(null);
    }
  }
  
  public void suspend()
  {
    if (_player != null) {}
    for (int i = _player.GetPos();; i = 0)
    {
      suspend(i, _state);
      return;
    }
  }
  
  public void suspend(int paramInt, OoyalaPlayer.State paramState)
  {
    Log.v("VisualOnStreamPlayer", "Player Suspend");
    if (_state == OoyalaPlayer.State.SUSPENDED) {
      return;
    }
    if (_player != null)
    {
      _timeBeforeSuspend = paramInt;
      _stateBeforeSuspend = paramState;
      stop();
      _player.SetView(null);
      _player.Uninit();
      _player = null;
    }
    removeView();
    _buffer = 0;
    _playQueued = false;
    setState(OoyalaPlayer.State.SUSPENDED);
  }
  
  protected class PlayheadUpdateTimerTask
    extends TimerTask
  {
    protected PlayheadUpdateTimerTask() {}
    
    public void run()
    {
      if (_player == null) {
        return;
      }
      if (_lastPlayhead != _player.GetPos()) {
        _playheadUpdateTimerHandler.sendEmptyMessage(0);
      }
      VisualOnStreamPlayer.access$002(VisualOnStreamPlayer.this, _player.GetPos());
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.VisualOnStreamPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */