package com.crashlytics.android;

import java.io.File;
import java.io.FilenameFilter;

final class w
  implements FilenameFilter
{
  private final String a;
  
  public w(String paramString)
  {
    a = paramString;
  }
  
  public final boolean accept(File paramFile, String paramString)
  {
    if (paramString.equals(a + ".cls")) {}
    while ((!paramString.contains(a)) || (paramString.endsWith(".cls_temp"))) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */