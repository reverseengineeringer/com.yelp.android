package com.yelp.android.cw;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import jp.line.android.sdk.api.FutureStatus;
import jp.line.android.sdk.api.b;
import jp.line.android.sdk.api.c;

public final class d<RO>
  implements b<RO>
{
  private boolean a;
  private FutureStatus b = FutureStatus.PROCESSING;
  private CountDownLatch c;
  private List<c<RO>> d;
  private List<jp.line.android.sdk.api.d<RO>> e;
  private RO f;
  private Throwable g;
  private long h;
  private long i;
  
  private final void a(List<c<RO>> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      b((c)paramList.next());
    }
  }
  
  private final void a(jp.line.android.sdk.api.d<RO> paramd, long paramLong1, long paramLong2)
  {
    try
    {
      paramd.a(this, paramLong1, paramLong2);
      return;
    }
    catch (Throwable paramd) {}
  }
  
  private boolean a(FutureStatus paramFutureStatus)
  {
    if (a) {
      return false;
    }
    if (c != null) {
      c.countDown();
    }
    a = true;
    b = paramFutureStatus;
    return true;
  }
  
  private final void b(c<RO> paramc)
  {
    try
    {
      paramc.a(this);
      return;
    }
    catch (Throwable paramc) {}
  }
  
  public final void a(long paramLong1, long paramLong2)
  {
    try
    {
      if (a) {
        return;
      }
      h = paramLong1;
      i = paramLong2;
      if ((e != null) && (e.size() > 0)) {}
      for (Object localObject1 = new ArrayList(e);; localObject1 = null)
      {
        if (localObject1 == null) {
          break;
        }
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext()) {
          a((jp.line.android.sdk.api.d)((Iterator)localObject1).next(), paramLong1, paramLong2);
        }
      }
      return;
    }
    finally {}
  }
  
  public final void a(RO paramRO)
  {
    try
    {
      f = paramRO;
      if (!a(FutureStatus.SUCCESS)) {
        return;
      }
      paramRO = d;
      d = null;
      e = null;
      if (paramRO != null)
      {
        a(paramRO);
        return;
      }
    }
    finally {}
  }
  
  public final void a(Throwable paramThrowable)
  {
    try
    {
      g = paramThrowable;
      if (!a(FutureStatus.FAILED)) {
        return;
      }
      paramThrowable = d;
      d = null;
      e = null;
      if (paramThrowable != null)
      {
        a(paramThrowable);
        return;
      }
    }
    finally {}
  }
  
  public final boolean a()
  {
    return a;
  }
  
  public final boolean a(c<RO> paramc)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    int k = 1;
    int j = 1;
    if (a)
    {
      if (j != 0) {
        b(paramc);
      }
      return bool1;
    }
    for (;;)
    {
      try
      {
        if (a)
        {
          bool1 = bool2;
          j = k;
          break;
        }
      }
      finally {}
      if (d == null) {
        d = new ArrayList();
      }
      if (!d.contains(paramc))
      {
        d.add(paramc);
        bool1 = true;
        j = 0;
      }
      else
      {
        j = 0;
        bool1 = bool2;
      }
    }
  }
  
  public final FutureStatus b()
  {
    return b;
  }
  
  public final RO c()
  {
    return (RO)f;
  }
  
  public final Throwable d()
  {
    return g;
  }
  
  public final boolean e()
  {
    try
    {
      if (!a(FutureStatus.CANCELED)) {
        return false;
      }
      List localList = d;
      d = null;
      e = null;
      if (localList != null) {
        a(localList);
      }
      return true;
    }
    finally {}
  }
  
  public final String toString()
  {
    Object localObject = System.getProperty("line.separator");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ApiRequestFuture [").append((String)localObject).append("    isDone=").append(a).append((String)localObject).append("    status=").append(b).append((String)localObject).append("    responseObject=").append(f).append((String)localObject);
    if (g != null)
    {
      localObject = new StringWriter();
      g.printStackTrace(new PrintWriter((Writer)localObject));
      localStringBuilder.append("    cause=").append(((StringWriter)localObject).toString());
    }
    if (i > 0L) {
      localStringBuilder.append("    progress=").append(h).append("/").append(i);
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cw.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */