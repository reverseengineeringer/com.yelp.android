package com.crashlytics.android.core;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import io.fabric.sdk.android.services.common.h;
import java.util.Iterator;
import java.util.List;

class v$a
  extends h
{
  private final float b;
  
  v$a(v paramv, float paramFloat)
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
        List localList = a.a();
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
            a.a((u)localObject2);
          }
          localObject1 = a.a();
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
      v.a(a, null);
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

/* Location:
 * Qualified Name:     com.crashlytics.android.core.v.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */