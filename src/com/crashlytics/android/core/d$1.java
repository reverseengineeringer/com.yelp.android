package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;

final class d$1
  implements FilenameFilter
{
  public boolean accept(File paramFile, String paramString)
  {
    return paramString.endsWith(".cls_temp");
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.d.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */