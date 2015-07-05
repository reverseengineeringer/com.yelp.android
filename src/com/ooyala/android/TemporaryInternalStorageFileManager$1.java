package com.ooyala.android;

import android.util.Log;
import java.io.File;
import java.io.FileFilter;

class TemporaryInternalStorageFileManager$1
  implements FileFilter
{
  TemporaryInternalStorageFileManager$1(TemporaryInternalStorageFileManager paramTemporaryInternalStorageFileManager, long paramLong) {}
  
  public boolean accept(File paramFile)
  {
    boolean bool2 = paramFile.isFile();
    boolean bool3 = paramFile.getName().startsWith("OOTISF_");
    if (val$now - paramFile.lastModified() >= 300000L) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      Log.d("TemporaryInternalStorageFiles", "cleanup(): f=" + paramFile.getAbsolutePath() + ", isFile=" + bool2 + ", nameMatches=" + bool3 + ", isOld=" + bool1);
      if ((!bool2) || (!bool3) || (!bool1)) {
        break;
      }
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.TemporaryInternalStorageFileManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */