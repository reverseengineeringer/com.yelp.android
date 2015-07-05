package com.crashlytics.android;

import com.crashlytics.android.internal.ci;
import com.crashlytics.android.internal.cj;
import com.crashlytics.android.internal.cl;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

final class af
{
  static final Map<String, String> a = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
  private static final FilenameFilter b = new ag();
  private static final short[] c = { 10, 20, 30, 60, 120, 300 };
  private final Object d = new Object();
  private final z e;
  private Thread f;
  
  public af(z paramz)
  {
    if (paramz == null) {
      throw new IllegalArgumentException("createReportCall must not be null.");
    }
    e = paramz;
  }
  
  final List<ad> a()
  {
    cl.a().b().a("Crashlytics", "Checking for crash reports...");
    synchronized (d)
    {
      File[] arrayOfFile = cl.a().i().listFiles(b);
      ??? = new LinkedList();
      int j = arrayOfFile.length;
      int i = 0;
      if (i < j)
      {
        File localFile = arrayOfFile[i];
        cl.a().b().a("Crashlytics", "Found crash report " + localFile.getPath());
        ((List)???).add(new ad(localFile));
        i += 1;
      }
    }
    return (List<ad>)???;
  }
  
  public final void a(float paramFloat)
  {
    try
    {
      if (f == null)
      {
        f = new Thread(new ah(this, paramFloat), "Crashlytics Report Uploader");
        f.start();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final boolean a(ad paramad)
  {
    boolean bool2 = false;
    synchronized (d)
    {
      try
      {
        localObject1 = new y(cj.a(cl.a().w(), cl.a().g()), paramad);
        boolean bool3 = e.a((y)localObject1);
        ci localci = cl.a().b();
        StringBuilder localStringBuilder = new StringBuilder("Crashlytics report upload ");
        if (!bool3) {
          break label122;
        }
        localObject1 = "complete: ";
        localci.b("Crashlytics", (String)localObject1 + paramad.b());
        bool1 = bool2;
        if (bool3)
        {
          paramad.a();
          bool1 = true;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Object localObject1;
          label122:
          cl.a().b().a("Crashlytics", "Error occurred sending report " + paramad, localException);
          boolean bool1 = bool2;
        }
      }
      return bool1;
      localObject1 = "FAILED: ";
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */