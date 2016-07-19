package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

class i$b
  implements FilenameFilter
{
  private final String a;
  
  public i$b(String paramString)
  {
    a = paramString;
  }
  
  public boolean accept(File paramFile, String paramString)
  {
    return (paramString.contains(a)) && (!paramString.endsWith(".cls_temp"));
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.i.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */