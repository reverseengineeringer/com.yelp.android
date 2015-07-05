package com.crashlytics.android;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;

class ak
{
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final String f;
  public final int g;
  public final String h;
  public final String i;
  public final ac j;
  
  public ak(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt, String paramString7, String paramString8, ac paramac)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramString5;
    f = paramString6;
    g = paramInt;
    h = paramString7;
    i = paramString8;
    j = paramac;
  }
  
  public static void a(File paramFile, FilenameFilter paramFilenameFilter, int paramInt, Comparator<File> paramComparator)
  {
    paramFile = paramFile.listFiles(paramFilenameFilter);
    int m;
    int n;
    int k;
    if ((paramFile != null) && (paramFile.length > paramInt))
    {
      Arrays.sort(paramFile, paramComparator);
      m = paramFile.length;
      n = paramFile.length;
      k = 0;
    }
    for (;;)
    {
      if (k < n)
      {
        paramFilenameFilter = paramFile[k];
        if (m > paramInt) {}
      }
      else
      {
        return;
      }
      paramFilenameFilter.delete();
      m -= 1;
      k += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */