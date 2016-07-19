package com.facebook.internal;

import java.io.File;
import java.io.FilenameFilter;
import java.util.concurrent.atomic.AtomicLong;

class i$a
{
  private static final FilenameFilter a = new FilenameFilter()
  {
    public boolean accept(File paramAnonymousFile, String paramAnonymousString)
    {
      return !paramAnonymousString.startsWith("buffer");
    }
  };
  private static final FilenameFilter b = new FilenameFilter()
  {
    public boolean accept(File paramAnonymousFile, String paramAnonymousString)
    {
      return paramAnonymousString.startsWith("buffer");
    }
  };
  
  static FilenameFilter a()
  {
    return a;
  }
  
  static void a(File paramFile)
  {
    paramFile = paramFile.listFiles(b());
    if (paramFile != null)
    {
      int j = paramFile.length;
      int i = 0;
      while (i < j)
      {
        paramFile[i].delete();
        i += 1;
      }
    }
  }
  
  static File b(File paramFile)
  {
    return new File(paramFile, "buffer" + Long.valueOf(i.b().incrementAndGet()).toString());
  }
  
  static FilenameFilter b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.i.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */