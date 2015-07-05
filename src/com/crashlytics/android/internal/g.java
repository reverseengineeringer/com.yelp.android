package com.crashlytics.android.internal;

import java.io.File;
import java.util.Iterator;
import java.util.List;

final class g
  extends y
  implements m
{
  public g(String paramString1, String paramString2, bu parambu)
  {
    super(paramString1, paramString2, parambu, ax.b);
  }
  
  public final boolean a(String paramString, List<File> paramList)
  {
    boolean bool = false;
    paramString = b().a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-API-CLIENT-VERSION", cl.a().f()).a("X-CRASHLYTICS-API-KEY", paramString);
    Iterator localIterator = paramList.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      File localFile = (File)localIterator.next();
      bd.c("Adding analytics session file " + localFile.getName() + " to multipart POST");
      paramString.a("session_analytics_file_" + i, localFile.getName(), "application/vnd.crashlytics.android.events", localFile);
      i += 1;
    }
    bd.c("Sending " + paramList.size() + " analytics files to " + a());
    i = paramString.b();
    bd.c("Response code for analytics file send is " + i);
    if (cj.a(i) == 0) {
      bool = true;
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */