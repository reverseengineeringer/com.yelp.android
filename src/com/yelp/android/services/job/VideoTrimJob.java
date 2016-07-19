package com.yelp.android.services.job;

import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Rect;
import android.support.v4.app.x.d;
import com.yelp.android.appdata.AppData;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.e;
import com.yelp.android.util.ffmpeg.d.a;
import com.yelp.android.util.l;
import com.yelp.android.util.t;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class VideoTrimJob
  extends YelpJob
{
  private transient d.a a;
  private transient d.a b;
  private String mBusinessId;
  private String mCaption;
  private int mEndTime;
  private ExecutorService mExecutorService;
  private final Set<File> mFilesToCleanup;
  private boolean mHasFailed;
  private File mInputVideo;
  private final boolean mIsConcurrent;
  private int mNumberOfChunks;
  private File mOutputVideo;
  private int mStartTime;
  private long mVideoDurationSeconds;
  private int mVideoHeight;
  private int mVideoWidth;
  
  private VideoTrimJob(File paramFile, int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    super(new com.path.android.jobqueue.d(2).b().a("VideoTrimJob"));
    mInputVideo = paramFile;
    mStartTime = paramInt1;
    mEndTime = paramInt2;
    mBusinessId = paramString1;
    mCaption = paramString2;
    mFilesToCleanup = new TreeSet();
    mIsConcurrent = false;
  }
  
  private static Rect a(int paramInt1, int paramInt2)
  {
    Rect localRect = new Rect();
    if (paramInt2 < paramInt1)
    {
      paramInt1 = (paramInt1 - paramInt2) / 2;
      localRect.set(paramInt1, 0, paramInt1 + paramInt2, paramInt2);
      return localRect;
    }
    paramInt2 = (paramInt2 - paramInt1) / 2;
    localRect.set(0, paramInt2, paramInt1, paramInt2 + paramInt1);
    return localRect;
  }
  
  private static String a(File paramFile)
  {
    paramFile = e.a(paramFile.getAbsolutePath());
    return paramFile + UUID.randomUUID() + ".webm";
  }
  
  private static String a(File paramFile, int paramInt)
  {
    return String.format(Locale.US, "%s-%02d%s", new Object[] { e.a(paramFile.getAbsolutePath()), Integer.valueOf(paramInt), e.c(paramFile) });
  }
  
  /* Error */
  private void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 136	com/yelp/android/services/job/VideoTrimJob:mHasFailed	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 136	com/yelp/android/services/job/VideoTrimJob:mHasFailed	Z
    //   19: ldc 41
    //   21: ldc -118
    //   23: iconst_0
    //   24: anewarray 119	java/lang/Object
    //   27: invokestatic 143	com/yelp/android/appdata/AppData:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   30: invokestatic 145	com/yelp/android/services/job/VideoTrimJob:c	()V
    //   33: aload_0
    //   34: invokespecial 148	com/yelp/android/services/job/VideoTrimJob:d	()V
    //   37: getstatic 154	com/yelp/android/analytics/iris/EventIri:UploadVideoFailure	Lcom/yelp/android/analytics/iris/EventIri;
    //   40: aload_0
    //   41: invokespecial 157	com/yelp/android/services/job/VideoTrimJob:b	()Ljava/util/Map;
    //   44: invokestatic 160	com/yelp/android/appdata/AppData:a	(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V
    //   47: goto -36 -> 11
    //   50: astore_2
    //   51: aload_0
    //   52: monitorexit
    //   53: aload_2
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	VideoTrimJob
    //   6	2	1	bool	boolean
    //   50	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	50	finally
    //   14	47	50	finally
  }
  
  private Map<String, Object> b()
  {
    long l = getTimeSinceCreation();
    HashMap localHashMap = new HashMap();
    localHashMap.put("step", VideoUploadJob.UploadStep.CLIENT_TRIM.toString());
    localHashMap.put("duration_sec", Long.valueOf(l));
    localHashMap.put("business_id", mBusinessId);
    localHashMap.put("video_length_sec", Long.valueOf(mVideoDurationSeconds));
    if (mOutputVideo == null)
    {
      l = 0L;
      localHashMap.put("size_bytes", Long.valueOf(l));
      localHashMap.put("width_pixels", Integer.valueOf(mVideoWidth));
      localHashMap.put("height_pixels", Integer.valueOf(mVideoHeight));
      localHashMap.put("wifi", Boolean.valueOf(l.a(AppData.b())));
      if (mOutputVideo != null) {
        break label188;
      }
    }
    label188:
    for (Object localObject = Integer.valueOf(0);; localObject = com.yelp.android.util.d.a(mOutputVideo.getAbsolutePath()))
    {
      localHashMap.put("md5_hash", localObject);
      return localHashMap;
      l = mOutputVideo.length();
      break;
    }
  }
  
  private static void c()
  {
    AppData localAppData = AppData.b();
    x.d locald = new x.d(localAppData).a(localAppData.getString(2131166853)).b(localAppData.getString(2131166788)).a(17301567);
    ((NotificationManager)localAppData.getSystemService("notification")).notify("VideoTrimJob.notification", (int)System.currentTimeMillis(), locald.a());
  }
  
  private void d()
  {
    Iterator localIterator = mFilesToCleanup.iterator();
    while (localIterator.hasNext()) {
      ((File)localIterator.next()).delete();
    }
    mFilesToCleanup.clear();
  }
  
  public static void launchJob(File paramFile, int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    AppData.w().a(new VideoTrimJob(paramFile, paramInt1, paramInt2, paramString1, paramString2));
  }
  
  public void initializeCallbacks()
  {
    a = new VideoTrimJob.1(this);
    b = new VideoTrimJob.2(this);
  }
  
  public void onRun()
    throws Throwable
  {
    super.onRun();
    AppData.a("VideoTrimJob", "Trimming started.", new Object[0]);
    initializeCallbacks();
    mOutputVideo = new File(a(mInputVideo));
    Object localObject = new t(mInputVideo.getAbsolutePath());
    int j = ((t)localObject).f();
    mVideoDurationSeconds = ((t)localObject).b();
    mVideoWidth = ((t)localObject).c();
    mVideoHeight = ((t)localObject).d();
    ((t)localObject).release();
    float f = Math.min(720.0F / Math.min(mVideoWidth, mVideoHeight), 1.0F);
    int k = (int)(mVideoWidth * f);
    int m = (int)(f * mVideoHeight);
    localObject = a(k, m);
    mNumberOfChunks = Runtime.getRuntime().availableProcessors();
    if ((mIsConcurrent) && (mNumberOfChunks > 1))
    {
      mExecutorService = Executors.newFixedThreadPool(mNumberOfChunks);
      int n = (mEndTime - mStartTime) / mNumberOfChunks;
      int i = 0;
      while (i < mNumberOfChunks)
      {
        int i1 = mStartTime + i * n;
        File localFile = new File(a(mOutputVideo, i));
        com.yelp.android.util.ffmpeg.b localb = new com.yelp.android.util.ffmpeg.b(mInputVideo, i1, i1 + n, k, m, j, (Rect)localObject, localFile);
        localb.a(b);
        AppData.a("VideoTrimJob", "started chunk " + localFile, new Object[0]);
        mExecutorService.execute(localb);
        mFilesToCleanup.add(localFile);
        i += 1;
      }
      mExecutorService.shutdown();
      if (!mExecutorService.awaitTermination(5L, TimeUnit.MINUTES))
      {
        YelpLog.remoteError("VideoTrimJob", "Timeout reached waiting for FFmpeg chunks to encode.");
        a();
      }
      return;
    }
    localObject = new com.yelp.android.util.ffmpeg.b(mInputVideo, mStartTime, mEndTime, k, m, j, (Rect)localObject, mOutputVideo);
    ((com.yelp.android.util.ffmpeg.b)localObject).a(a);
    ((com.yelp.android.util.ffmpeg.b)localObject).run();
  }
  
  public boolean shouldReRunOnThrowable(Throwable paramThrowable)
  {
    a();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.job.VideoTrimJob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */