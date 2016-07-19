package com.crashlytics.android.core;

import java.io.File;
import java.util.Comparator;

final class i$10
  implements Comparator<File>
{
  public int a(File paramFile1, File paramFile2)
  {
    return paramFile1.getName().compareTo(paramFile2.getName());
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.i.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */