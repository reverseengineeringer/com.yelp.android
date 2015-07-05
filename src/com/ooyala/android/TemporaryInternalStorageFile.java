package com.ooyala.android;

import android.content.Context;
import java.io.File;
import java.io.PrintWriter;

public final class TemporaryInternalStorageFile
{
  private final File tmpFile;
  
  public TemporaryInternalStorageFile(Context paramContext, String paramString1, String paramString2)
  {
    tmpFile = File.createTempFile(paramString1, paramString2, paramContext.getCacheDir());
    if ((tmpFile != null) && (!tmpFile.exists())) {
      tmpFile.createNewFile();
    }
  }
  
  public String getAbsolutePath()
  {
    if (tmpFile == null) {
      return "";
    }
    return tmpFile.getAbsolutePath();
  }
  
  public File getFile()
  {
    return tmpFile;
  }
  
  public void write(String paramString)
  {
    if (tmpFile != null)
    {
      PrintWriter localPrintWriter = new PrintWriter(tmpFile);
      localPrintWriter.write(paramString);
      localPrintWriter.flush();
      localPrintWriter.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.TemporaryInternalStorageFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */