package com.crashlytics.android;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class u
  implements FilenameFilter
{
  public final boolean accept(File paramFile, String paramString)
  {
    return (!bb.a.accept(paramFile, paramString)) && (bb.i().matcher(paramString).matches());
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */