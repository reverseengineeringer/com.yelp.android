package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

class i$c
  implements FilenameFilter
{
  private final String a;
  
  public i$c(String paramString)
  {
    a = paramString;
  }
  
  public boolean accept(File paramFile, String paramString)
  {
    if (paramString.equals(a + ".cls")) {}
    while ((!paramString.contains(a)) || (paramString.endsWith(".cls_temp"))) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.i.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */