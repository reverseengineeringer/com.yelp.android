package bolts;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

public class k<TResult>
{
  public static final ExecutorService a = ;
  public static final Executor b = a.b();
  private static final Executor c = g.b();
  private final Object d = new Object();
  private boolean e;
  private boolean f;
  private TResult g;
  private Exception h;
  private List<j<TResult, Void>> i = new ArrayList();
  
  public static <TResult> k<TResult> a(Exception paramException)
  {
    s locals = a();
    locals.b(paramException);
    return locals.a();
  }
  
  public static <TResult> k<TResult> a(TResult paramTResult)
  {
    s locals = a();
    locals.b(paramTResult);
    return locals.a();
  }
  
  public static <TResult> k<TResult>.s a()
  {
    k localk = new k();
    localk.getClass();
    return new s(localk, null);
  }
  
  private static <TContinuationResult, TResult> void c(k<TContinuationResult>.s paramk, j<TResult, TContinuationResult> paramj, k<TResult> paramk1, Executor paramExecutor)
  {
    paramExecutor.execute(new r(paramj, paramk1, paramk));
  }
  
  private static <TContinuationResult, TResult> void d(k<TContinuationResult>.s paramk, j<TResult, k<TContinuationResult>> paramj, k<TResult> paramk1, Executor paramExecutor)
  {
    paramExecutor.execute(new m(paramj, paramk1, paramk));
  }
  
  public static <TResult> k<TResult> g()
  {
    s locals = a();
    locals.c();
    return locals.a();
  }
  
  private void h()
  {
    for (;;)
    {
      j localj;
      synchronized (d)
      {
        Iterator localIterator = i.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localj = (j)localIterator.next();
      }
      try
      {
        localj.then(this);
      }
      catch (RuntimeException localRuntimeException)
      {
        throw localRuntimeException;
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localException);
      }
    }
    i = null;
  }
  
  public <TContinuationResult> k<TContinuationResult> a(j<TResult, TContinuationResult> paramj)
  {
    return a(paramj, c);
  }
  
  public <TContinuationResult> k<TContinuationResult> a(j<TResult, TContinuationResult> paramj, Executor paramExecutor)
  {
    s locals = a();
    synchronized (d)
    {
      boolean bool = b();
      if (!bool) {
        i.add(new o(this, locals, paramj, paramExecutor));
      }
      if (bool) {
        c(locals, paramj, this, paramExecutor);
      }
      return locals.a();
    }
  }
  
  public <TContinuationResult> k<TContinuationResult> b(j<TResult, TContinuationResult> paramj)
  {
    return c(paramj, c);
  }
  
  public <TContinuationResult> k<TContinuationResult> b(j<TResult, k<TContinuationResult>> paramj, Executor paramExecutor)
  {
    s locals = a();
    synchronized (d)
    {
      boolean bool = b();
      if (!bool) {
        i.add(new p(this, locals, paramj, paramExecutor));
      }
      if (bool) {
        d(locals, paramj, this, paramExecutor);
      }
      return locals.a();
    }
  }
  
  public boolean b()
  {
    synchronized (d)
    {
      boolean bool = e;
      return bool;
    }
  }
  
  public <TContinuationResult> k<TContinuationResult> c(j<TResult, TContinuationResult> paramj, Executor paramExecutor)
  {
    return b(new q(this, paramj), paramExecutor);
  }
  
  public boolean c()
  {
    synchronized (d)
    {
      boolean bool = f;
      return bool;
    }
  }
  
  public boolean d()
  {
    for (;;)
    {
      synchronized (d)
      {
        if (h != null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public TResult e()
  {
    synchronized (d)
    {
      Object localObject2 = g;
      return (TResult)localObject2;
    }
  }
  
  public Exception f()
  {
    synchronized (d)
    {
      Exception localException = h;
      return localException;
    }
  }
}

/* Location:
 * Qualified Name:     bolts.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */