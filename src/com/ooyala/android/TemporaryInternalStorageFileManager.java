package com.ooyala.android;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.util.Date;
import java.util.concurrent.atomic.AtomicLong;

public final class TemporaryInternalStorageFileManager
{
  private static final String PRE_PRE_FIX = "OOTISF_";
  private static final String TAG = "TemporaryInternalStorageFiles";
  public static final long TMP_LIFESPAN_MSEC = 300000L;
  private static AtomicLong s_nextTmpId = new AtomicLong();
  
  public void cleanup(Context paramContext)
  {
    paramContext = paramContext.getCacheDir();
    Log.d("TemporaryInternalStorageFiles", "cleanup(): dir=" + paramContext);
    if ((paramContext != null) && (paramContext.isDirectory()))
    {
      paramContext = paramContext.listFiles(new TemporaryInternalStorageFileManager.1(this, new Date().getTime()));
      int j = paramContext.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramContext[i];
        Log.d("TemporaryInternalStorageFiles", "cleanup(): deleting f=" + ((File)localObject).getAbsolutePath() + ", name=" + ((File)localObject).getName());
        ((File)localObject).delete();
        i += 1;
      }
    }
  }
  
  public TemporaryInternalStorageFile next(Context paramContext, String paramString1, String paramString2)
  {
    cleanup(paramContext);
    s_nextTmpId.getAndIncrement();
    return new TemporaryInternalStorageFile(paramContext, "OOTISF_" + s_nextTmpId.get() + "_" + paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.TemporaryInternalStorageFileManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */