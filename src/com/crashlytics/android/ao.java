package com.crashlytics.android;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;

final class ao
  extends FileOutputStream
{
  public static final FilenameFilter a = new ap();
  private final String b;
  private File c;
  private boolean d = false;
  
  public ao(File paramFile, String paramString)
  {
    super(new File(paramFile, paramString + ".cls_temp"));
    b = (paramFile + File.separator + paramString);
    c = new File(b + ".cls_temp");
  }
  
  public final void a()
  {
    if (d) {
      return;
    }
    d = true;
    super.flush();
    super.close();
  }
  
  public final void close()
  {
    File localFile;
    try
    {
      boolean bool = d;
      if (bool) {}
      for (;;)
      {
        return;
        d = true;
        super.flush();
        super.close();
        localFile = new File(b + ".cls");
        if (!c.renameTo(localFile)) {
          break;
        }
        c = null;
      }
      str = "";
    }
    finally {}
    String str;
    if (localFile.exists()) {
      str = " (target already exists)";
    }
    for (;;)
    {
      throw new IOException("Could not rename temp file: " + c + " -> " + localFile + str);
      if (!c.exists()) {
        str = " (source does not exist)";
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */