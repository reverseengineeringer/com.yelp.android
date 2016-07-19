package com.yelp.android.cz;

import com.yelp.android.db.a;
import com.yelp.android.db.i;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import jp.line.android.sdk.login.LineLoginFuture;
import jp.line.android.sdk.login.LineLoginFuture.ProgressOfLogin;
import jp.line.android.sdk.login.b;
import jp.line.android.sdk.login.c;

public final class d
  implements LineLoginFuture
{
  private final long a;
  private LineLoginFuture.ProgressOfLogin b = LineLoginFuture.ProgressOfLogin.STARTED;
  private boolean c;
  private final boolean d;
  private com.yelp.android.db.f e;
  private i f;
  private a g;
  private Throwable h;
  private final List<b> i = new ArrayList();
  private final List<c> j = new ArrayList();
  private Executor k;
  
  protected d(long paramLong, LineLoginFuture.ProgressOfLogin paramProgressOfLogin, com.yelp.android.db.f paramf, i parami, boolean paramBoolean)
  {
    a = paramLong;
    e = paramf;
    f = parami;
    d = paramBoolean;
    if ((flowNumber >= GOT_OTPflowNumber) && ((e == null) || (e.a == null) || (e.b == null)))
    {
      b = LineLoginFuture.ProgressOfLogin.STARTED;
      return;
    }
    if ((flowNumber >= GOT_REQUEST_TOKENflowNumber) && ((f == null) || (f.a == null)))
    {
      b = LineLoginFuture.ProgressOfLogin.STARTED;
      return;
    }
    if ((flowNumber >= SUCCESSflowNumber) && ((g == null) || (g.b == null)))
    {
      b = LineLoginFuture.ProgressOfLogin.STARTED;
      return;
    }
    b = paramProgressOfLogin;
    c = true;
  }
  
  protected d(boolean paramBoolean)
  {
    a = System.currentTimeMillis();
    d = paramBoolean;
  }
  
  private final void a(List<b> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return;
    }
    i().execute(new e(this, paramList));
  }
  
  private final void b(List<c> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return;
    }
    i().execute(new f(this, paramList));
  }
  
  private final Executor i()
  {
    if (k == null) {}
    try
    {
      if (k == null) {
        k = Executors.newCachedThreadPool();
      }
      return k;
    }
    finally {}
  }
  
  public final boolean a()
  {
    return d;
  }
  
  public final boolean a(a parama)
  {
    a locala = null;
    Object localObject = null;
    if (b.flowNumber < SUCCESSflowNumber) {}
    for (;;)
    {
      try
      {
        if (b.flowNumber >= SUCCESSflowNumber) {
          break label157;
        }
        b = LineLoginFuture.ProgressOfLogin.SUCCESS;
        g = parama;
        boolean bool2 = true;
        if (!i.isEmpty())
        {
          parama = new ArrayList(i);
          i.clear();
          locala = parama;
          bool1 = bool2;
          if (!j.isEmpty())
          {
            localObject = new ArrayList(j);
            j.clear();
            bool1 = bool2;
            locala = parama;
          }
          a(locala);
          b((List)localObject);
          return bool1;
        }
      }
      finally {}
      parama = null;
      continue;
      label157:
      boolean bool1 = false;
      locala = null;
      continue;
      bool1 = false;
      parama = null;
      localObject = locala;
      locala = parama;
    }
  }
  
  public final boolean a(com.yelp.android.db.f paramf)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    Object localObject1 = null;
    Object localObject2 = null;
    if (b.flowNumber < GOT_OTPflowNumber)
    {
      localObject1 = localObject2;
      bool1 = bool2;
    }
    try
    {
      if (b.flowNumber < GOT_OTPflowNumber)
      {
        b = LineLoginFuture.ProgressOfLogin.GOT_OTP;
        e = paramf;
        bool2 = true;
        localObject1 = localObject2;
        bool1 = bool2;
        if (!j.isEmpty())
        {
          localObject1 = new ArrayList(j);
          bool1 = bool2;
        }
      }
      b((List)localObject1);
      return bool1;
    }
    finally {}
  }
  
  public final boolean a(i parami)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    Object localObject1 = null;
    Object localObject2 = null;
    if (b.flowNumber < GOT_REQUEST_TOKENflowNumber)
    {
      localObject1 = localObject2;
      bool1 = bool2;
    }
    try
    {
      if (b.flowNumber < GOT_REQUEST_TOKENflowNumber)
      {
        b = LineLoginFuture.ProgressOfLogin.GOT_REQUEST_TOKEN;
        f = parami;
        bool2 = true;
        localObject1 = localObject2;
        bool1 = bool2;
        if (!j.isEmpty())
        {
          localObject1 = new ArrayList(j);
          bool1 = bool2;
        }
      }
      b((List)localObject1);
      return bool1;
    }
    finally {}
  }
  
  public final boolean a(Throwable paramThrowable)
  {
    Throwable localThrowable = null;
    Object localObject = null;
    if (b.flowNumber < FAILEDflowNumber) {}
    for (;;)
    {
      try
      {
        if (b.flowNumber >= FAILEDflowNumber) {
          break label157;
        }
        b = LineLoginFuture.ProgressOfLogin.FAILED;
        h = paramThrowable;
        boolean bool2 = true;
        if (!i.isEmpty())
        {
          paramThrowable = new ArrayList(i);
          i.clear();
          localThrowable = paramThrowable;
          bool1 = bool2;
          if (!j.isEmpty())
          {
            localObject = new ArrayList(j);
            j.clear();
            bool1 = bool2;
            localThrowable = paramThrowable;
          }
          a(localThrowable);
          b((List)localObject);
          return bool1;
        }
      }
      finally {}
      paramThrowable = null;
      continue;
      label157:
      boolean bool1 = false;
      localThrowable = null;
      continue;
      bool1 = false;
      paramThrowable = null;
      localObject = localThrowable;
      localThrowable = paramThrowable;
    }
  }
  
  public final boolean a(LineLoginFuture.ProgressOfLogin paramProgressOfLogin)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    Object localObject1 = null;
    Object localObject2 = null;
    if (b.flowNumber < flowNumber)
    {
      localObject1 = localObject2;
      bool1 = bool2;
    }
    try
    {
      if (b.flowNumber < flowNumber)
      {
        b = paramProgressOfLogin;
        bool2 = true;
        localObject1 = localObject2;
        bool1 = bool2;
        if (!j.isEmpty())
        {
          localObject1 = new ArrayList(j);
          bool1 = bool2;
        }
      }
      b((List)localObject1);
      return bool1;
    }
    finally {}
  }
  
  public final boolean a(b paramb)
  {
    boolean bool = true;
    int m = 0;
    for (;;)
    {
      try
      {
        if (c())
        {
          if (!i.contains(paramb))
          {
            i.add(paramb);
            if (m != 0) {
              b(paramb);
            }
            return bool;
          }
        }
        else
        {
          bool = false;
          m = 1;
          continue;
        }
        bool = false;
      }
      finally {}
    }
  }
  
  public final boolean a(c paramc)
  {
    int m = 1;
    for (;;)
    {
      try
      {
        if ((c()) && (!j.contains(paramc)))
        {
          j.add(paramc);
          bool = true;
          if (b.flowNumber > STARTEDflowNumber)
          {
            if (m != 0) {
              b(paramc);
            }
            return bool;
          }
          m = 0;
          continue;
        }
        boolean bool = false;
      }
      finally {}
    }
  }
  
  public final long b()
  {
    return a;
  }
  
  final void b(b paramb)
  {
    try
    {
      paramb.a(this);
      return;
    }
    catch (Throwable paramb) {}
  }
  
  final void b(c paramc)
  {
    try
    {
      paramc.a(this);
      return;
    }
    catch (Throwable paramc) {}
  }
  
  public final boolean c()
  {
    switch (1.a[b.ordinal()])
    {
    default: 
      return true;
    }
    return false;
  }
  
  public final LineLoginFuture.ProgressOfLogin d()
  {
    return b;
  }
  
  public final com.yelp.android.db.f e()
  {
    return e;
  }
  
  public final i f()
  {
    return f;
  }
  
  public final a g()
  {
    return g;
  }
  
  public final boolean h()
  {
    ArrayList localArrayList1 = null;
    Object localObject3 = null;
    if (b.flowNumber < CANCELEDflowNumber) {}
    for (;;)
    {
      try
      {
        if (b.flowNumber >= CANCELEDflowNumber) {
          break label151;
        }
        b = LineLoginFuture.ProgressOfLogin.CANCELED;
        boolean bool2 = true;
        if (!i.isEmpty())
        {
          localArrayList1 = new ArrayList(i);
          i.clear();
          localArrayList2 = localArrayList1;
          bool1 = bool2;
          if (!j.isEmpty())
          {
            localObject3 = new ArrayList(j);
            j.clear();
            bool1 = bool2;
            localArrayList2 = localArrayList1;
          }
          a(localArrayList2);
          b((List)localObject3);
          return bool1;
        }
      }
      finally {}
      Object localObject2 = null;
      continue;
      label151:
      boolean bool1 = false;
      ArrayList localArrayList2 = null;
      continue;
      bool1 = false;
      localArrayList2 = null;
      localObject3 = localObject2;
    }
  }
  
  public final String toString()
  {
    Object localObject = System.getProperty("line.separator");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("LineLoginFuture : ").append((String)localObject).append("    progress=").append(b).append((String)localObject).append("    createdTime=").append(a).append((String)localObject).append("    otp=").append(e).append((String)localObject).append("    requestToken=").append(f).append((String)localObject).append("    accessToken=").append(g).append((String)localObject);
    if (h != null)
    {
      localObject = new StringWriter();
      h.printStackTrace(new PrintWriter((Writer)localObject));
      localStringBuilder.append("    cause=").append(((StringWriter)localObject).toString());
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cz.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */