package com.yelp.android.services;

import android.annotation.TargetApi;
import android.app.IntentService;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.support.v4.app.NotificationCompat.Builder;
import com.yelp.android.appdata.AppData;
import com.yelp.android.services.job.VideoUploadJob.UploadStep;
import com.yelp.android.util.aj;
import com.yelp.android.util.ffmpeg.b;
import com.yelp.android.util.l;
import com.yelp.android.util.s;
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

@TargetApi(14)
public class VideoTrimService
  extends IntentService
{
  private File a;
  private String b;
  private String c;
  private int d;
  private ExecutorService e;
  private final Set<File> f = new TreeSet();
  private boolean g = false;
  private long h;
  private int i;
  private int j;
  private long k;
  private final com.yelp.android.util.ffmpeg.f l = new t(this);
  private final com.yelp.android.util.ffmpeg.f m = new u(this);
  
  public VideoTrimService()
  {
    super("VideoTrimService");
  }
  
  public static Intent a(Context paramContext, File paramFile, int paramInt1, int paramInt2, String paramString1, String paramString2, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, VideoTrimService.class);
    paramContext.putExtra("input_file_path", paramFile.getAbsolutePath());
    paramContext.putExtra("output_file_path", a(paramFile));
    paramContext.putExtra("trim_start_time", paramInt1);
    paramContext.putExtra("trim_end_time", paramInt2);
    paramContext.putExtra("video_business_id", paramString1);
    paramContext.putExtra("video_caption", paramString2);
    paramContext.putExtra("trim_concurrent", paramBoolean);
    return paramContext;
  }
  
  private Rect a(int paramInt1, int paramInt2)
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
  
  private String a(int paramInt)
  {
    return String.format(Locale.US, "%s-%02d%s", new Object[] { l.a(a.getAbsolutePath()), Integer.valueOf(paramInt), l.c(a) });
  }
  
  private static String a(File paramFile)
  {
    paramFile = l.a(paramFile.getAbsolutePath());
    return paramFile + UUID.randomUUID() + ".webm";
  }
  
  /* Error */
  private void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 56	com/yelp/android/services/VideoTrimService:g	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 56	com/yelp/android/services/VideoTrimService:g	Z
    //   19: ldc 33
    //   21: ldc -97
    //   23: iconst_0
    //   24: anewarray 115	java/lang/Object
    //   27: invokestatic 164	com/yelp/android/appdata/AppData:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    //   30: aload_0
    //   31: invokespecial 166	com/yelp/android/services/VideoTrimService:c	()V
    //   34: aload_0
    //   35: invokespecial 168	com/yelp/android/services/VideoTrimService:d	()V
    //   38: getstatic 174	com/yelp/android/analytics/iris/EventIri:UploadVideoFailure	Lcom/yelp/android/analytics/iris/EventIri;
    //   41: aload_0
    //   42: invokespecial 177	com/yelp/android/services/VideoTrimService:b	()Ljava/util/Map;
    //   45: invokestatic 180	com/yelp/android/appdata/AppData:a	(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V
    //   48: goto -37 -> 11
    //   51: astore_2
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_2
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	VideoTrimService
    //   6	2	1	bool	boolean
    //   51	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	51	finally
    //   14	48	51	finally
  }
  
  private Map<String, Object> b()
  {
    long l1 = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis() - h);
    HashMap localHashMap = new HashMap();
    localHashMap.put("step", VideoUploadJob.UploadStep.CLIENT_TRIM.toString());
    localHashMap.put("duration_sec", Long.valueOf(l1));
    localHashMap.put("business_id", c);
    localHashMap.put("video_length_sec", Long.valueOf(k));
    if (a == null) {}
    for (l1 = 0L;; l1 = a.length())
    {
      localHashMap.put("size_bytes", Long.valueOf(l1));
      localHashMap.put("width_pixels", Integer.valueOf(i));
      localHashMap.put("height_pixels", Integer.valueOf(j));
      localHashMap.put("wifi", Boolean.valueOf(s.a(this)));
      localHashMap.put("md5_hash", com.yelp.android.util.f.a(a.getAbsolutePath()));
      return localHashMap;
    }
  }
  
  private void c()
  {
    NotificationCompat.Builder localBuilder = new NotificationCompat.Builder(this).setContentTitle(getString(2131166899)).setContentText(getString(2131166827)).setSmallIcon(17301567);
    ((NotificationManager)getSystemService("notification")).notify("VideoTrimService.notification", (int)System.currentTimeMillis(), localBuilder.build());
  }
  
  private void d()
  {
    Iterator localIterator = f.iterator();
    while (localIterator.hasNext()) {
      ((File)localIterator.next()).delete();
    }
    f.clear();
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    AppData.a("VideoTrimService", "Trimming started.", new Object[0]);
    h = System.currentTimeMillis();
    File localFile = new File(paramIntent.getStringExtra("input_file_path"));
    Object localObject = new aj(localFile.getAbsolutePath());
    int n = ((aj)localObject).a();
    int i1 = ((aj)localObject).f();
    k = ((aj)localObject).b();
    i = ((aj)localObject).c();
    j = ((aj)localObject).d();
    ((aj)localObject).release();
    float f1 = Math.min(720.0F / Math.min(i, j), 1.0F);
    int i2 = (int)(i * f1);
    int i3 = (int)(f1 * j);
    localObject = a(i2, i3);
    a = new File(paramIntent.getStringExtra("output_file_path"));
    int i4 = paramIntent.getIntExtra("trim_start_time", 0);
    n = paramIntent.getIntExtra("trim_end_time", Math.min(n, 3000));
    c = paramIntent.getStringExtra("video_business_id");
    b = paramIntent.getStringExtra("video_caption");
    d = Runtime.getRuntime().availableProcessors();
    e = Executors.newFixedThreadPool(d);
    int i5;
    if ((paramIntent.getBooleanExtra("trim_concurrent", false)) && (d > 1))
    {
      i5 = (n - i4) / d;
      n = 0;
    }
    while (n < d)
    {
      int i6 = i4 + n * i5;
      paramIntent = new File(a(n));
      b localb = new b(localFile, i6, i6 + i5, i2, i3, i1, (Rect)localObject, paramIntent);
      localb.a(m);
      AppData.a("VideoTrimService", "started chunk " + paramIntent, new Object[0]);
      e.execute(localb);
      f.add(paramIntent);
      n += 1;
      continue;
      paramIntent = new b(localFile, i4, n, i2, i3, i1, (Rect)localObject, a);
      paramIntent.a(l);
      e.execute(paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.VideoTrimService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */