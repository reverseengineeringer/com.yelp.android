package com.ooyala.android;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
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
      paramContext = paramContext.listFiles(new FileFilter()
      {
        public boolean accept(File paramAnonymousFile)
        {
          boolean bool2 = paramAnonymousFile.isFile();
          boolean bool3 = paramAnonymousFile.getName().startsWith("OOTISF_");
          if (val$now - paramAnonymousFile.lastModified() >= 300000L) {}
          for (boolean bool1 = true;; bool1 = false)
          {
            Log.d("TemporaryInternalStorageFiles", "cleanup(): f=" + paramAnonymousFile.getAbsolutePath() + ", isFile=" + bool2 + ", nameMatches=" + bool3 + ", isOld=" + bool1);
            if ((!bool2) || (!bool3) || (!bool1)) {
              break;
            }
            return true;
          }
          return false;
        }
      });
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
    throws IOException
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