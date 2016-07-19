package com.yelp.android.webimageview;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.yelp.common.collect.MapMaker;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Comparator;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;

public class ImageCache
{
  private static final int CACHE_CLEAR_FREQUENCY = 75;
  private static final AtomicInteger COUNTER = new AtomicInteger();
  private static final Comparator<File> FILE_COMPARATOR;
  private static final Comparator<File> FILE_COMPARATOR_FALLBACK;
  private static final int MAX_EXTERNAL = 5242880;
  private static final int MAX_INTERNAL = 1048576;
  private static final int MEGABYTE_IN_BYTES = 1048576;
  private static final OptionsFactory OPTIONS;
  private static final String TAG = "DroidFu.ImageCache";
  private final ConcurrentMap<String, Bitmap> mCache;
  Context mContext;
  File mExternalCacheDir;
  private BroadcastReceiver mExternalStorageReceiver;
  private int mInMemoryCacheMissCount;
  final File mInternalCacheDir;
  final File mPermanentCacheDir;
  File mSecondLevelCacheDir;
  
  static
  {
    if (Integer.valueOf(Build.VERSION.SDK).intValue() >= 4) {}
    for (Object localObject = new EfficientOptionsFactory(null);; localObject = new OptionsFactory(null))
    {
      OPTIONS = (OptionsFactory)localObject;
      FILE_COMPARATOR = new Comparator()
      {
        public int compare(File paramAnonymousFile1, File paramAnonymousFile2)
        {
          int i = (int)(paramAnonymousFile2.lastModified() - paramAnonymousFile1.lastModified());
          if (i != 0) {
            return i;
          }
          return paramAnonymousFile2.compareTo(paramAnonymousFile1);
        }
      };
      FILE_COMPARATOR_FALLBACK = new Comparator()
      {
        public int compare(File paramAnonymousFile1, File paramAnonymousFile2)
        {
          return paramAnonymousFile2.getName().compareTo(paramAnonymousFile2.getName());
        }
      };
      return;
    }
  }
  
  public ImageCache(Context paramContext, int paramInt1, int paramInt2)
  {
    mContext = paramContext;
    mCache = new MapMaker().initialCapacity(paramInt1).concurrencyLevel(paramInt2).softValues().makeMap();
    mPermanentCacheDir = new File(paramContext.getApplicationContext().getCacheDir().getAbsolutePath() + "/permanent_images");
    mInternalCacheDir = new File(paramContext.getApplicationContext().getCacheDir() + "/droidfu/imagecache");
    updateExternalStorageState(paramContext);
    registerForExternalStorageUpdates(paramContext);
  }
  
  static void clearDirectory(File paramFile, long paramLong)
  {
    paramFile = paramFile.listFiles();
    if ((paramFile != null) && (paramFile.length > 0))
    {
      int j = paramFile.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramFile[i];
        if ((((File)localObject).lastModified() < paramLong) && (!((File)localObject).delete())) {
          ((File)localObject).deleteOnExit();
        }
        i += 1;
      }
    }
  }
  
  public static File getExternalCacheDir(Context paramContext)
  {
    try
    {
      File localFile = ExternalStorageWrapper.getExternalCacheDir(paramContext);
      return localFile;
    }
    catch (Throwable localThrowable) {}
    return new File(TextUtils.join(File.separator, tmp45_38));
  }
  
  private void incrementAndTrim()
  {
    if (COUNTER.incrementAndGet() >= 75)
    {
      trimCache();
      COUNTER.set(0);
    }
  }
  
  boolean assertExternalMountWritable()
  {
    File localFile = new File(mExternalCacheDir, "cache.dir" + SystemClock.elapsedRealtime());
    try
    {
      boolean bool1 = localFile.createNewFile();
      boolean bool2 = localFile.delete();
      return bool2 & bool1;
    }
    catch (IOException localIOException) {}
    return false;
  }
  
  boolean checkExternalFreeSpace()
  {
    StatFs localStatFs = new StatFs(mExternalCacheDir.getAbsolutePath());
    long l = localStatFs.getAvailableBlocks();
    return localStatFs.getBlockSize() * l > 5242880L;
  }
  
  public void clear()
  {
    mCache.clear();
  }
  
  public Bitmap get(Object paramObject)
  {
    paramObject = String.valueOf(paramObject);
    paramObject = (Bitmap)mCache.get(paramObject);
    if (paramObject != null) {
      return (Bitmap)paramObject;
    }
    return null;
  }
  
  public Bitmap getBitmap(Object paramObject)
  {
    String str = String.valueOf(paramObject);
    Bitmap localBitmap = get(str);
    if (localBitmap == null) {
      synchronized (mSecondLevelCacheDir)
      {
        File localFile1 = getImageFile(mSecondLevelCacheDir, str);
        paramObject = localFile1;
        if (!localFile1.exists()) {
          paramObject = getImageFile(mPermanentCacheDir, str);
        }
        if (((File)paramObject).exists())
        {
          localBitmap = BitmapFactory.decodeFile(((File)paramObject).getAbsolutePath(), OPTIONS.getOptions());
          if (localBitmap == null) {
            return null;
          }
          ((File)paramObject).setLastModified(System.currentTimeMillis());
          mCache.put(str, localBitmap);
        }
        return localBitmap;
      }
    }
    return localBitmap;
  }
  
  File getImageFile(File paramFile, String paramString)
  {
    return new File(paramFile, Integer.toHexString(paramString.hashCode()));
  }
  
  final boolean isUsingExternalCache()
  {
    return mSecondLevelCacheDir == mExternalCacheDir;
  }
  
  public Bitmap put(String paramString, InputStream paramInputStream)
    throws IOException
  {
    return put(paramString, paramInputStream, false);
  }
  
  public Bitmap put(String paramString, InputStream paramInputStream, boolean paramBoolean)
    throws IOException
  {
    incrementAndTrim();
    if (paramBoolean) {
      mPermanentCacheDir.mkdirs();
    }
    FileWritingInputStream localFileWritingInputStream;
    Bitmap localBitmap;
    for (File localFile = getImageFile(mPermanentCacheDir, paramString);; localFile = getImageFile(mSecondLevelCacheDir, paramString))
    {
      try
      {
        localFileWritingInputStream = new FileWritingInputStream(paramInputStream, new FileOutputStream(localFile));
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        if (isUsingExternalCache())
        {
          updateExternalStorageState(mContext);
          if (!isUsingExternalCache()) {
            return put(paramString, paramInputStream, paramBoolean);
          }
          throw localFileNotFoundException;
        }
        throw localFileNotFoundException;
      }
      try
      {
        localBitmap = BitmapFactory.decodeStream(localFileWritingInputStream, null, OPTIONS.getOptions());
        localFileWritingInputStream.close();
        if (localBitmap != null) {
          break label174;
        }
        localFile.delete();
        if (!isUsingExternalCache()) {
          break label187;
        }
        updateExternalStorageState(mContext);
        if (isUsingExternalCache()) {
          break label187;
        }
        return put(paramString, paramInputStream, paramBoolean);
      }
      finally
      {
        localFileWritingInputStream.close();
      }
      mSecondLevelCacheDir.mkdirs();
    }
    label174:
    mCache.put(paramString, localBitmap);
    label187:
    return localBitmap;
  }
  
  void registerForExternalStorageUpdates(Context paramContext)
  {
    mExternalStorageReceiver = new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        updateExternalStorageState(paramAnonymousContext);
      }
    };
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
    localIntentFilter.addAction("android.intent.action.MEDIA_REMOVED");
    localIntentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
    localIntentFilter.addDataScheme("file");
    paramContext.registerReceiver(mExternalStorageReceiver, localIntentFilter);
  }
  
  public void trimCache()
  {
    int j = 0;
    Object localObject1 = mSecondLevelCacheDir;
    for (;;)
    {
      synchronized (mSecondLevelCacheDir)
      {
        if ((!((File)localObject1).exists()) || (!((File)localObject1).isDirectory())) {
          break label260;
        }
        localObject1 = ((File)localObject1).listFiles();
        if (localObject1 == null) {
          break label260;
        }
        try
        {
          Arrays.sort((Object[])localObject1, FILE_COMPARATOR);
          Log.i("DroidFu.ImageCache", "Sorting by oldest last");
          l1 = 0L;
          long l3 = System.currentTimeMillis();
          int m = localObject1.length;
          int i = 0;
          if (i >= m) {
            break;
          }
          Object localObject3 = localObject1[i];
          if (isUsingExternalCache())
          {
            k = 5242880;
            if ((l1 >= k) || (l3 - 86400000L <= ((File)localObject3).lastModified())) {
              break label197;
            }
            l2 = ((File)localObject3).length();
            l2 = l1 + l2;
            i += 1;
            l1 = l2;
            continue;
          }
        }
        catch (RuntimeException localRuntimeException1)
        {
          try
          {
            Arrays.sort((Object[])localObject1, FILE_COMPARATOR_FALLBACK);
            Log.w("DroidFu.ImageCache", "Purging files by file name comparision rather than age");
          }
          catch (RuntimeException localRuntimeException2)
          {
            Log.w("DroidFu.ImageCache", "Tried to purge cache in a smart order, but failed ... going to purge randomly");
          }
          continue;
        }
      }
      int k = 1048576;
      continue;
      label197:
      k = j + 1;
      j = k;
      long l2 = l1;
      if (!localRuntimeException2.delete())
      {
        localRuntimeException2.deleteOnExit();
        j = k;
        l2 = l1;
      }
    }
    Log.d("DroidFu.ImageCache", String.format("Purged %d files and left with %d bytes on disk", new Object[] { Integer.valueOf(j), Long.valueOf(l1) }));
    label260:
    long l1 = System.currentTimeMillis();
    clearDirectory(mPermanentCacheDir, l1 - 604800000L);
  }
  
  void updateExternalStorageState(Context paramContext)
  {
    if ("mounted".equals(Environment.getExternalStorageState()))
    {
      if (mExternalCacheDir == null)
      {
        paramContext = getExternalCacheDir(paramContext);
        if (paramContext != null) {
          mExternalCacheDir = new File(paramContext, "images");
        }
      }
      else
      {
        mExternalCacheDir.mkdirs();
        if (mExternalCacheDir.exists()) {
          break label71;
        }
        useInternalCacheDir();
        return;
      }
      useInternalCacheDir();
      return;
      label71:
      if ((!checkExternalFreeSpace()) || (!assertExternalMountWritable()))
      {
        useInternalCacheDir();
        return;
      }
      mSecondLevelCacheDir = mExternalCacheDir;
      clearDirectory(mInternalCacheDir, Long.MAX_VALUE);
      return;
    }
    useInternalCacheDir();
  }
  
  void useInternalCacheDir()
  {
    mSecondLevelCacheDir = mInternalCacheDir;
    mSecondLevelCacheDir.mkdirs();
  }
  
  private static class EfficientOptionsFactory
    extends ImageCache.OptionsFactory
  {
    private EfficientOptionsFactory()
    {
      super();
    }
    
    public BitmapFactory.Options getOptions()
    {
      BitmapFactory.Options localOptions = super.getOptions();
      inInputShareable = true;
      inPurgeable = true;
      return localOptions;
    }
  }
  
  @TargetApi(8)
  public static class ExternalStorageWrapper
  {
    public static File getExternalCacheDir(Context paramContext)
    {
      return paramContext.getExternalCacheDir();
    }
  }
  
  private static class OptionsFactory
  {
    public BitmapFactory.Options getOptions()
    {
      return new BitmapFactory.Options();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.ImageCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */