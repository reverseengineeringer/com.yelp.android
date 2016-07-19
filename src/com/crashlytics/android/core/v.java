package com.crashlytics.android.core;

import android.content.Context;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.services.common.g;
import io.fabric.sdk.android.services.common.h;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

class v
{
  static final Map<String, String> a = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
  private static final FilenameFilter b = new FilenameFilter()
  {
    public boolean accept(File paramAnonymousFile, String paramAnonymousString)
    {
      return (paramAnonymousString.endsWith(".cls")) && (!paramAnonymousString.contains("Session"));
    }
  };
  private static final short[] c = { 10, 20, 30, 60, 120, 300 };
  private final Object d = new Object();
  private final k e;
  private Thread f;
  
  public v(k paramk)
  {
    if (paramk == null) {
      throw new IllegalArgumentException("createReportCall must not be null.");
    }
    e = paramk;
  }
  
  List<u> a()
  {
    c.h().a("Fabric", "Checking for crash reports...");
    synchronized (d)
    {
      File[] arrayOfFile = e.e().u().listFiles(b);
      ??? = new LinkedList();
      int j = arrayOfFile.length;
      int i = 0;
      if (i < j)
      {
        File localFile = arrayOfFile[i];
        c.h().a("Fabric", "Found crash report " + localFile.getPath());
        ((List)???).add(new x(localFile));
        i += 1;
      }
    }
    if (((List)???).isEmpty()) {
      c.h().a("Fabric", "No reports found.");
    }
    return (List<u>)???;
  }
  
  public void a(float paramFloat)
  {
    try
    {
      if (f == null)
      {
        f = new Thread(new a(paramFloat), "Crashlytics Report Uploader");
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
  
  boolean a(u paramu)
  {
    boolean bool2 = false;
    synchronized (d)
    {
      try
      {
        localObject1 = e.e().B();
        localObject1 = new j(new g().a((Context)localObject1), paramu);
        boolean bool3 = e.a((j)localObject1);
        io.fabric.sdk.android.k localk = c.h();
        StringBuilder localStringBuilder = new StringBuilder().append("Crashlytics report upload ");
        if (!bool3) {
          break label131;
        }
        localObject1 = "complete: ";
        localk.c("Fabric", (String)localObject1 + paramu.b());
        bool1 = bool2;
        if (bool3)
        {
          paramu.a();
          bool1 = true;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Object localObject1;
          label131:
          c.h().e("Fabric", "Error occurred sending report " + paramu, localException);
          boolean bool1 = bool2;
        }
      }
      return bool1;
      localObject1 = "FAILED: ";
    }
  }
  
  private class a
    extends h
  {
    private final float b;
    
    a(float paramFloat)
    {
      b = paramFloat;
    }
    
    private void b()
    {
      c.h().a("Fabric", "Starting report processing in " + b + " second(s)...");
      if (b > 0.0F) {}
      for (;;)
      {
        Object localObject2;
        try
        {
          Thread.sleep((b * 1000.0F));
          localObject2 = e.e();
          i locali = ((e)localObject2).m();
          List localList = a();
          if (locali.a()) {
            return;
          }
        }
        catch (InterruptedException localInterruptedException1)
        {
          Thread.currentThread().interrupt();
          return;
        }
        Object localObject1;
        if ((!localInterruptedException1.isEmpty()) && (!((e)localObject2).x()))
        {
          c.h().a("Fabric", "User declined to send. Removing " + localInterruptedException1.size() + " Report(s).");
          localObject1 = localInterruptedException1.iterator();
          while (((Iterator)localObject1).hasNext()) {
            ((u)((Iterator)localObject1).next()).a();
          }
        }
        else
        {
          int i = 0;
          while ((!((List)localObject1).isEmpty()) && (!e.e().m().a()))
          {
            c.h().a("Fabric", "Attempting to send " + ((List)localObject1).size() + " report(s)");
            localObject1 = ((List)localObject1).iterator();
            while (((Iterator)localObject1).hasNext())
            {
              localObject2 = (u)((Iterator)localObject1).next();
              a((u)localObject2);
            }
            localObject1 = a();
            if (!((List)localObject1).isEmpty())
            {
              long l = v.b()[Math.min(i, v.b().length - 1)];
              c.h().a("Fabric", "Report submisson: scheduling delayed retry in " + l + " seconds");
              try
              {
                Thread.sleep(l * 1000L);
                i += 1;
              }
              catch (InterruptedException localInterruptedException2)
              {
                Thread.currentThread().interrupt();
                return;
              }
            }
          }
        }
      }
    }
    
    public void a()
    {
      try
      {
        b();
        v.a(v.this, null);
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          c.h().e("Fabric", "An unexpected error occurred while attempting to upload crash reports.", localException);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */