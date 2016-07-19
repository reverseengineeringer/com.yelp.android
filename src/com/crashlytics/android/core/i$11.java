package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class i$11
  implements FilenameFilter
{
  public boolean accept(File paramFile, String paramString)
  {
    return i.h().matcher(paramString).matches();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.i.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */