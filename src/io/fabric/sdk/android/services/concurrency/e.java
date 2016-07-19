package io.fabric.sdk.android.services.concurrency;

import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public class e<V>
  extends FutureTask<V>
  implements a<i>, f, i
{
  final Object b = a(paramCallable);
  
  public e(Runnable paramRunnable, V paramV)
  {
    super(paramRunnable, paramV);
  }
  
  public e(Callable<V> paramCallable)
  {
    super(paramCallable);
  }
  
  public <T extends a<i>,  extends f,  extends i> T a()
  {
    return (a)b;
  }
  
  protected <T extends a<i>,  extends f,  extends i> T a(Object paramObject)
  {
    if (g.a(paramObject)) {
      return (a)paramObject;
    }
    return new g();
  }
  
  public void a(i parami)
  {
    ((a)a()).c(parami);
  }
  
  public void a(Throwable paramThrowable)
  {
    ((i)a()).a(paramThrowable);
  }
  
  public Priority b()
  {
    return ((f)a()).b();
  }
  
  public void b(boolean paramBoolean)
  {
    ((i)a()).b(paramBoolean);
  }
  
  public Collection<i> c()
  {
    return ((a)a()).c();
  }
  
  public int compareTo(Object paramObject)
  {
    return ((f)a()).compareTo(paramObject);
  }
  
  public boolean d()
  {
    return ((a)a()).d();
  }
  
  public boolean f()
  {
    return ((i)a()).f();
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */