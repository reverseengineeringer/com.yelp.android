package com.yelp.android.webimageview;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import android.widget.ImageView;
import java.io.File;
import java.io.IOException;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public class ImageLoader
  implements Runnable
{
  public static final String BITMAP_EXTRA = "droidfu:extra_bitmap";
  private static final Comparator<ImageLoader> COMPARE = new Comparator()
  {
    public int compare(ImageLoader paramAnonymousImageLoader1, ImageLoader paramAnonymousImageLoader2)
    {
      return (int)(mPriority - mPriority);
    }
  };
  private static final int DEFAULT_POOL_SIZE = 2;
  public static final int HANDLER_MESSAGE_ID = 0;
  public static final BroadcastReceiver RECEIVER;
  private static ReferenceWatcher<ImageLoader> REQUESTS;
  private static PausableThreadPoolExecutor executor;
  public static ImageCache imageCache;
  private static int numAttempts = 3;
  public final boolean cachePermanently;
  private Handler handler;
  public final String imageUrl;
  private boolean mFollowCrossRedirects;
  private long mPriority;
  private int mReqHeight;
  private int mReqWidth;
  private int mResponse;
  
  static
  {
    RECEIVER = new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        if (!TextUtils.equals(paramAnonymousIntent.getAction(), "android.net.conn.CONNECTIVITY_CHANGE")) {
          return;
        }
        if (paramAnonymousIntent.getBooleanExtra("noConnectivity", false))
        {
          ImageLoader.executor.pause();
          return;
        }
        ImageLoader.executor.resume();
      }
    };
  }
  
  ImageLoader(String paramString)
  {
    imageUrl = paramString;
    cachePermanently = false;
  }
  
  private ImageLoader(String paramString, ImageView paramImageView, boolean paramBoolean)
  {
    this(paramString, new ImageLoaderHandler(paramImageView), paramBoolean);
  }
  
  private ImageLoader(String paramString, ImageLoaderHandler paramImageLoaderHandler, boolean paramBoolean)
  {
    imageUrl = paramString;
    handler = paramImageLoaderHandler;
    cachePermanently = paramBoolean;
  }
  
  private Bitmap applyExifFileAttributes(String paramString, Bitmap paramBitmap)
  {
    try
    {
      paramString = new ExifInterface(paramString);
      switch (paramString.getAttributeInt("Orientation", 1))
      {
      case 4: 
      case 5: 
      case 7: 
      default: 
        return paramBitmap;
      }
    }
    catch (IOException paramString)
    {
      return paramBitmap;
    }
    int i = 90;
    i += 90;
    for (;;)
    {
      i += 90;
      if (paramBitmap.isMutable())
      {
        new Canvas(paramBitmap).rotate(i);
        return paramBitmap;
      }
      paramString = new Matrix();
      paramString.postRotate(i);
      paramString = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), paramString, true);
      paramBitmap.recycle();
      return paramString;
      i = 0;
      break;
      i = 0;
    }
  }
  
  private static int calculateInSampleSize(String paramString, int paramInt1, int paramInt2)
  {
    int i = 1;
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions);
    int k = outHeight;
    int j = outWidth;
    if ((k > paramInt2) || (j > paramInt1))
    {
      i = Math.round(k / paramInt2);
      paramInt1 = Math.round(j / paramInt1);
      if (i >= paramInt1) {}
    }
    else
    {
      return i;
    }
    return paramInt1;
  }
  
  public static void clearCache()
  {
    imageCache.clear();
    imageCache.trimCache();
  }
  
  public static File getImageFile(String paramString)
  {
    return imageCache.getImageFile(imageCachemSecondLevelCacheDir, paramString);
  }
  
  public static final Set<ImageLoader> getSnapShot()
  {
    return REQUESTS.getSnapShotAndClean();
  }
  
  public static void initialize(Context paramContext, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    try
    {
      if (executor == null)
      {
        REQUESTS = new ReferenceWatcher();
        BoundPriorityBlockingQueue localBoundPriorityBlockingQueue = new BoundPriorityBlockingQueue(100, 24, COMPARE);
        executor = new PausableThreadPoolExecutor(2, 2, 300L, TimeUnit.MILLISECONDS, localBoundPriorityBlockingQueue);
        executor.setThreadFactory(new ThreadFactory()
        {
          private final AtomicInteger COUNTER = new AtomicInteger();
          
          public Thread newThread(final Runnable paramAnonymousRunnable)
          {
            paramAnonymousRunnable = new Thread(new Runnable()
            {
              public void run()
              {
                Process.setThreadPriority(-1);
                paramAnonymousRunnable.run();
              }
            });
            paramAnonymousRunnable.setDaemon(true);
            paramAnonymousRunnable.setName("ImageLoader-" + COUNTER.incrementAndGet());
            if (val$exceptionHandler != null) {
              paramAnonymousRunnable.setUncaughtExceptionHandler(val$exceptionHandler);
            }
            return paramAnonymousRunnable;
          }
        });
      }
      if (imageCache == null) {
        imageCache = new ImageCache(paramContext, 25, 2);
      }
      paramContext.registerReceiver(RECEIVER, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
      return;
    }
    finally {}
  }
  
  public static void preload(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (imageCache.get(paramString) == null)) {
      executor.execute(new ImageLoader(paramString));
    }
  }
  
  public static void setMaxDownloadAttempts(int paramInt)
  {
    numAttempts = paramInt;
  }
  
  public static void setThreadPoolSize(int paramInt)
  {
    executor.setMaximumPoolSize(paramInt);
  }
  
  public static void start(String paramString, int paramInt1, int paramInt2, ImageLoaderHandler paramImageLoaderHandler, boolean paramBoolean1, boolean paramBoolean2)
  {
    ImageLoader localImageLoader = new ImageLoader(paramString, paramImageLoaderHandler, paramBoolean1);
    mPriority = priority;
    mReqWidth = paramInt1;
    mReqHeight = paramInt2;
    mFollowCrossRedirects = paramBoolean2;
    paramString = imageCache.get(paramString);
    if (paramString == null) {
      executor.execute(localImageLoader);
    }
    do
    {
      return;
      if (!(paramImageLoaderHandler instanceof WebImageView.WebImageLoaderHandler)) {
        break;
      }
      paramImageLoaderHandler = (WebImageView)((WebImageView.WebImageLoaderHandler)paramImageLoaderHandler).getImageView();
    } while (paramImageLoaderHandler == null);
    paramImageLoaderHandler.setImageBitmap(paramString, true);
    localImageLoader.notifyImageLoaded(paramString);
    return;
    localImageLoader.notifyImageLoaded(paramString);
  }
  
  public static void start(String paramString, ImageView paramImageView, boolean paramBoolean)
  {
    ImageLoader localImageLoader = new ImageLoader(paramString, paramImageView, paramBoolean);
    for (;;)
    {
      synchronized (imageCache)
      {
        paramString = imageCache.get(paramString);
        if (paramString == null)
        {
          executor.execute(localImageLoader);
          return;
        }
        if ((paramImageView instanceof WebImageView)) {
          ((WebImageView)paramImageView).setImageBitmap(paramString, true);
        }
      }
      paramImageView.setImageBitmap(paramString);
    }
  }
  
  public static void start(String paramString, ImageLoaderHandler paramImageLoaderHandler, boolean paramBoolean)
  {
    start(paramString, 0, 0, paramImageLoaderHandler, paramBoolean, false);
  }
  
  public static void trimCache()
  {
    if (imageCache != null) {
      imageCache.trimCache();
    }
  }
  
  public int getResponse()
  {
    return mResponse;
  }
  
  public void notifyImageLoaded(Bitmap paramBitmap)
  {
    Message localMessage = new Message();
    what = 0;
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("droidfu:extra_bitmap", paramBitmap);
    localMessage.setData(localBundle);
    handler.sendMessage(localMessage);
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: getstatic 191	com/yelp/android/webimageview/ImageLoader:REQUESTS	Lcom/yelp/android/webimageview/ReferenceWatcher;
    //   3: aload_0
    //   4: invokevirtual 324	com/yelp/android/webimageview/ReferenceWatcher:watch	(Ljava/lang/Object;)V
    //   7: aload_0
    //   8: getfield 70	com/yelp/android/webimageview/ImageLoader:imageUrl	Ljava/lang/String;
    //   11: invokestatic 243	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   14: ifne +87 -> 101
    //   17: aload_0
    //   18: getfield 70	com/yelp/android/webimageview/ImageLoader:imageUrl	Ljava/lang/String;
    //   21: ldc_w 326
    //   24: invokevirtual 332	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   27: ifeq +74 -> 101
    //   30: aload_0
    //   31: getfield 70	com/yelp/android/webimageview/ImageLoader:imageUrl	Ljava/lang/String;
    //   34: invokestatic 338	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   37: invokevirtual 342	android/net/Uri:getPath	()Ljava/lang/String;
    //   40: astore 5
    //   42: new 145	android/graphics/BitmapFactory$Options
    //   45: dup
    //   46: invokespecial 146	android/graphics/BitmapFactory$Options:<init>	()V
    //   49: astore 4
    //   51: aload_0
    //   52: getfield 265	com/yelp/android/webimageview/ImageLoader:mReqWidth	I
    //   55: ifle +28 -> 83
    //   58: aload_0
    //   59: getfield 267	com/yelp/android/webimageview/ImageLoader:mReqHeight	I
    //   62: ifle +21 -> 83
    //   65: aload 4
    //   67: aload 5
    //   69: aload_0
    //   70: getfield 265	com/yelp/android/webimageview/ImageLoader:mReqWidth	I
    //   73: aload_0
    //   74: getfield 267	com/yelp/android/webimageview/ImageLoader:mReqHeight	I
    //   77: invokestatic 344	com/yelp/android/webimageview/ImageLoader:calculateInSampleSize	(Ljava/lang/String;II)I
    //   80: putfield 347	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   83: aload_0
    //   84: aload_0
    //   85: aload 5
    //   87: aload 5
    //   89: aload 4
    //   91: invokestatic 155	android/graphics/BitmapFactory:decodeFile	(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   94: invokespecial 349	com/yelp/android/webimageview/ImageLoader:applyExifFileAttributes	(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    //   97: invokevirtual 284	com/yelp/android/webimageview/ImageLoader:notifyImageLoaded	(Landroid/graphics/Bitmap;)V
    //   100: return
    //   101: getstatic 170	com/yelp/android/webimageview/ImageLoader:imageCache	Lcom/yelp/android/webimageview/ImageCache;
    //   104: aload_0
    //   105: getfield 70	com/yelp/android/webimageview/ImageLoader:imageUrl	Ljava/lang/String;
    //   108: invokevirtual 352	com/yelp/android/webimageview/ImageCache:getBitmap	(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    //   111: astore 7
    //   113: aload 7
    //   115: ifnonnull +404 -> 519
    //   118: iconst_1
    //   119: istore_1
    //   120: iload_1
    //   121: getstatic 57	com/yelp/android/webimageview/ImageLoader:numAttempts	I
    //   124: if_icmpgt +395 -> 519
    //   127: new 354	java/net/URL
    //   130: dup
    //   131: aload_0
    //   132: getfield 70	com/yelp/android/webimageview/ImageLoader:imageUrl	Ljava/lang/String;
    //   135: invokespecial 355	java/net/URL:<init>	(Ljava/lang/String;)V
    //   138: astore 5
    //   140: iconst_0
    //   141: istore_2
    //   142: aconst_null
    //   143: astore 4
    //   145: aload 4
    //   147: astore 6
    //   149: iload_2
    //   150: iconst_3
    //   151: if_icmpge +22 -> 173
    //   154: aload 5
    //   156: invokevirtual 359	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   159: astore 4
    //   161: aload 4
    //   163: instanceof 361
    //   166: ifne +33 -> 199
    //   169: aload 4
    //   171: astore 6
    //   173: aload 6
    //   175: invokevirtual 367	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   178: astore 5
    //   180: aload 5
    //   182: ifnonnull +146 -> 328
    //   185: aload 5
    //   187: ifnull -87 -> 100
    //   190: aload 5
    //   192: invokevirtual 372	java/io/InputStream:close	()V
    //   195: return
    //   196: astore 4
    //   198: return
    //   199: aload_0
    //   200: aload 4
    //   202: checkcast 361	java/net/HttpURLConnection
    //   205: invokevirtual 375	java/net/HttpURLConnection:getResponseCode	()I
    //   208: putfield 295	com/yelp/android/webimageview/ImageLoader:mResponse	I
    //   211: aload 4
    //   213: astore 6
    //   215: aload_0
    //   216: getfield 295	com/yelp/android/webimageview/ImageLoader:mResponse	I
    //   219: sipush 300
    //   222: if_icmplt -49 -> 173
    //   225: aload_0
    //   226: getfield 269	com/yelp/android/webimageview/ImageLoader:mFollowCrossRedirects	Z
    //   229: istore_3
    //   230: iload_3
    //   231: ifne +18 -> 249
    //   234: iconst_0
    //   235: ifeq -135 -> 100
    //   238: new 377	java/lang/NullPointerException
    //   241: dup
    //   242: invokespecial 378	java/lang/NullPointerException:<init>	()V
    //   245: athrow
    //   246: astore 4
    //   248: return
    //   249: aload_0
    //   250: getfield 295	com/yelp/android/webimageview/ImageLoader:mResponse	I
    //   253: sipush 301
    //   256: if_icmpeq +23 -> 279
    //   259: aload_0
    //   260: getfield 295	com/yelp/android/webimageview/ImageLoader:mResponse	I
    //   263: sipush 302
    //   266: if_icmpeq +13 -> 279
    //   269: aload_0
    //   270: getfield 295	com/yelp/android/webimageview/ImageLoader:mResponse	I
    //   273: sipush 307
    //   276: if_icmpne +30 -> 306
    //   279: aload 4
    //   281: invokevirtual 382	java/net/URLConnection:getURL	()Ljava/net/URL;
    //   284: astore 5
    //   286: aload 5
    //   288: ifnonnull +33 -> 321
    //   291: iconst_0
    //   292: ifeq -192 -> 100
    //   295: new 377	java/lang/NullPointerException
    //   298: dup
    //   299: invokespecial 378	java/lang/NullPointerException:<init>	()V
    //   302: athrow
    //   303: astore 4
    //   305: return
    //   306: iconst_0
    //   307: ifeq -207 -> 100
    //   310: new 377	java/lang/NullPointerException
    //   313: dup
    //   314: invokespecial 378	java/lang/NullPointerException:<init>	()V
    //   317: athrow
    //   318: astore 4
    //   320: return
    //   321: iload_2
    //   322: iconst_1
    //   323: iadd
    //   324: istore_2
    //   325: goto -180 -> 145
    //   328: getstatic 170	com/yelp/android/webimageview/ImageLoader:imageCache	Lcom/yelp/android/webimageview/ImageCache;
    //   331: aload_0
    //   332: getfield 70	com/yelp/android/webimageview/ImageLoader:imageUrl	Ljava/lang/String;
    //   335: aload 5
    //   337: aload_0
    //   338: getfield 72	com/yelp/android/webimageview/ImageLoader:cachePermanently	Z
    //   341: invokevirtual 386	com/yelp/android/webimageview/ImageCache:put	(Ljava/lang/String;Ljava/io/InputStream;Z)Landroid/graphics/Bitmap;
    //   344: astore 4
    //   346: aload 5
    //   348: ifnull +168 -> 516
    //   351: aload 5
    //   353: invokevirtual 372	java/io/InputStream:close	()V
    //   356: aload 4
    //   358: ifnull -258 -> 100
    //   361: aload_0
    //   362: getfield 83	com/yelp/android/webimageview/ImageLoader:handler	Landroid/os/Handler;
    //   365: ifnull -265 -> 100
    //   368: aload_0
    //   369: aload 4
    //   371: invokevirtual 284	com/yelp/android/webimageview/ImageLoader:notifyImageLoaded	(Landroid/graphics/Bitmap;)V
    //   374: return
    //   375: astore 5
    //   377: goto -21 -> 356
    //   380: astore 4
    //   382: aconst_null
    //   383: astore 4
    //   385: ldc 2
    //   387: invokevirtual 391	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   390: new 393	java/lang/StringBuilder
    //   393: dup
    //   394: invokespecial 394	java/lang/StringBuilder:<init>	()V
    //   397: ldc_w 396
    //   400: invokevirtual 400	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   403: aload_0
    //   404: getfield 70	com/yelp/android/webimageview/ImageLoader:imageUrl	Ljava/lang/String;
    //   407: invokevirtual 400	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   410: ldc_w 402
    //   413: invokevirtual 400	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   416: iload_1
    //   417: invokevirtual 405	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   420: ldc_w 407
    //   423: invokevirtual 400	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   426: invokevirtual 410	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   429: invokestatic 416	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   432: pop
    //   433: ldc2_w 417
    //   436: invokestatic 424	java/lang/Thread:sleep	(J)V
    //   439: aload 4
    //   441: ifnull +8 -> 449
    //   444: aload 4
    //   446: invokevirtual 372	java/io/InputStream:close	()V
    //   449: iload_1
    //   450: iconst_1
    //   451: iadd
    //   452: istore_1
    //   453: goto -333 -> 120
    //   456: astore 5
    //   458: aconst_null
    //   459: astore 4
    //   461: aload 4
    //   463: ifnull +8 -> 471
    //   466: aload 4
    //   468: invokevirtual 372	java/io/InputStream:close	()V
    //   471: aload 5
    //   473: athrow
    //   474: astore 5
    //   476: goto -37 -> 439
    //   479: astore 4
    //   481: goto -32 -> 449
    //   484: astore 4
    //   486: goto -15 -> 471
    //   489: astore 6
    //   491: aload 5
    //   493: astore 4
    //   495: aload 6
    //   497: astore 5
    //   499: goto -38 -> 461
    //   502: astore 5
    //   504: goto -43 -> 461
    //   507: astore 4
    //   509: aload 5
    //   511: astore 4
    //   513: goto -128 -> 385
    //   516: goto -160 -> 356
    //   519: aload 7
    //   521: astore 4
    //   523: goto -167 -> 356
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	526	0	this	ImageLoader
    //   119	334	1	i	int
    //   141	184	2	j	int
    //   229	2	3	bool	boolean
    //   49	121	4	localObject1	Object
    //   196	16	4	localIOException1	IOException
    //   246	34	4	localIOException2	IOException
    //   303	1	4	localIOException3	IOException
    //   318	1	4	localIOException4	IOException
    //   344	26	4	localBitmap1	Bitmap
    //   380	1	4	localIOException5	IOException
    //   383	84	4	localObject2	Object
    //   479	1	4	localIOException6	IOException
    //   484	1	4	localIOException7	IOException
    //   493	1	4	localInterruptedException1	InterruptedException
    //   507	1	4	localIOException8	IOException
    //   511	11	4	localObject3	Object
    //   40	312	5	localObject4	Object
    //   375	1	5	localIOException9	IOException
    //   456	16	5	localObject5	Object
    //   474	18	5	localInterruptedException2	InterruptedException
    //   497	1	5	localObject6	Object
    //   502	8	5	localObject7	Object
    //   147	67	6	localObject8	Object
    //   489	7	6	localObject9	Object
    //   111	409	7	localBitmap2	Bitmap
    // Exception table:
    //   from	to	target	type
    //   190	195	196	java/io/IOException
    //   238	246	246	java/io/IOException
    //   295	303	303	java/io/IOException
    //   310	318	318	java/io/IOException
    //   351	356	375	java/io/IOException
    //   127	140	380	java/io/IOException
    //   154	169	380	java/io/IOException
    //   173	180	380	java/io/IOException
    //   199	211	380	java/io/IOException
    //   215	230	380	java/io/IOException
    //   249	279	380	java/io/IOException
    //   279	286	380	java/io/IOException
    //   127	140	456	finally
    //   154	169	456	finally
    //   173	180	456	finally
    //   199	211	456	finally
    //   215	230	456	finally
    //   249	279	456	finally
    //   279	286	456	finally
    //   433	439	474	java/lang/InterruptedException
    //   444	449	479	java/io/IOException
    //   466	471	484	java/io/IOException
    //   328	346	489	finally
    //   385	433	502	finally
    //   433	439	502	finally
    //   328	346	507	java/io/IOException
  }
  
  private static final class BoundPriorityBlockingQueue<T>
    extends PriorityBlockingQueue<T>
  {
    private final int mMaxSize;
    
    public BoundPriorityBlockingQueue(int paramInt1, int paramInt2, Comparator<? super T> paramComparator)
    {
      super(paramComparator);
      mMaxSize = paramInt1;
    }
    
    public boolean offer(T paramT)
    {
      boolean bool = super.offer(paramT);
      if (size() > mMaxSize)
      {
        paramT = new LinkedList();
        drainTo(paramT, mMaxSize / 2);
        super.clear();
        super.addAll(paramT);
      }
      return bool;
    }
  }
  
  public static class PausableThreadPoolExecutor
    extends ThreadPoolExecutor
  {
    private boolean isPaused;
    private final ReentrantLock mLock = new ReentrantLock();
    private final Condition mPauseCondition = mLock.newCondition();
    
    public PausableThreadPoolExecutor(int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit, PriorityBlockingQueue<? extends Runnable> paramPriorityBlockingQueue)
    {
      super(paramInt2, paramLong, paramTimeUnit, paramPriorityBlockingQueue);
    }
    
    protected void beforeExecute(Thread paramThread, Runnable paramRunnable)
    {
      super.beforeExecute(paramThread, paramRunnable);
      mLock.lock();
      try
      {
        for (;;)
        {
          boolean bool = isPaused;
          if (!bool) {
            break;
          }
          try
          {
            mPauseCondition.await();
          }
          catch (InterruptedException paramRunnable)
          {
            paramThread.interrupt();
          }
        }
      }
      finally
      {
        mLock.unlock();
      }
    }
    
    public void pause()
    {
      mLock.lock();
      try
      {
        isPaused = true;
        return;
      }
      finally
      {
        mLock.unlock();
      }
    }
    
    public void resume()
    {
      mLock.lock();
      try
      {
        isPaused = false;
        mPauseCondition.signalAll();
        return;
      }
      finally
      {
        mLock.unlock();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.ImageLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */