package com.comscore.utils;

import java.io.File;
import java.io.FilenameFilter;

final class q
  implements FilenameFilter
{
  public boolean accept(File paramFile, String paramString)
  {
    return paramString.startsWith("cs_cache_");
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */