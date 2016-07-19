package rx.internal.schedulers;

import com.yelp.android.dk.d;
import com.yelp.android.dm.b;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import rx.exceptions.OnErrorNotImplementedException;
import rx.f;
import rx.internal.util.e;

public final class ScheduledAction
  extends AtomicReference<Thread>
  implements Runnable, f
{
  private static final long serialVersionUID = -3962399486978279857L;
  final com.yelp.android.dg.a action;
  final e cancel;
  
  public ScheduledAction(com.yelp.android.dg.a parama)
  {
    action = parama;
    cancel = new e();
  }
  
  public ScheduledAction(com.yelp.android.dg.a parama, b paramb)
  {
    action = parama;
    cancel = new e(new Remover(this, paramb));
  }
  
  public ScheduledAction(com.yelp.android.dg.a parama, e parame)
  {
    action = parama;
    cancel = new e(new Remover2(this, parame));
  }
  
  public void add(Future<?> paramFuture)
  {
    cancel.a(new a(paramFuture));
  }
  
  public void add(f paramf)
  {
    cancel.a(paramf);
  }
  
  public void addParent(b paramb)
  {
    cancel.a(new Remover(this, paramb));
  }
  
  public void addParent(e parame)
  {
    cancel.a(new Remover2(this, parame));
  }
  
  public boolean isUnsubscribed()
  {
    return cancel.isUnsubscribed();
  }
  
  public void run()
  {
    try
    {
      lazySet(Thread.currentThread());
      action.call();
      return;
    }
    catch (Throwable localThrowable)
    {
      if ((localThrowable instanceof OnErrorNotImplementedException)) {}
      for (IllegalStateException localIllegalStateException = new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", localThrowable);; localIllegalStateException = new IllegalStateException("Fatal Exception thrown on Scheduler.Worker thread.", localIllegalStateException))
      {
        d.a().b().a(localIllegalStateException);
        Thread localThread = Thread.currentThread();
        localThread.getUncaughtExceptionHandler().uncaughtException(localThread, localIllegalStateException);
        return;
      }
    }
    finally
    {
      unsubscribe();
    }
  }
  
  public void unsubscribe()
  {
    if (!cancel.isUnsubscribed()) {
      cancel.unsubscribe();
    }
  }
  
  private static final class Remover
    extends AtomicBoolean
    implements f
  {
    private static final long serialVersionUID = 247232374289553518L;
    final b parent;
    final ScheduledAction s;
    
    public Remover(ScheduledAction paramScheduledAction, b paramb)
    {
      s = paramScheduledAction;
      parent = paramb;
    }
    
    public boolean isUnsubscribed()
    {
      return s.isUnsubscribed();
    }
    
    public void unsubscribe()
    {
      if (compareAndSet(false, true)) {
        parent.b(s);
      }
    }
  }
  
  private static final class Remover2
    extends AtomicBoolean
    implements f
  {
    private static final long serialVersionUID = 247232374289553518L;
    final e parent;
    final ScheduledAction s;
    
    public Remover2(ScheduledAction paramScheduledAction, e parame)
    {
      s = paramScheduledAction;
      parent = parame;
    }
    
    public boolean isUnsubscribed()
    {
      return s.isUnsubscribed();
    }
    
    public void unsubscribe()
    {
      if (compareAndSet(false, true)) {
        parent.b(s);
      }
    }
  }
  
  private final class a
    implements f
  {
    private final Future<?> b;
    
    a()
    {
      Future localFuture;
      b = localFuture;
    }
    
    public boolean isUnsubscribed()
    {
      return b.isCancelled();
    }
    
    public void unsubscribe()
    {
      if (get() != Thread.currentThread())
      {
        b.cancel(true);
        return;
      }
      b.cancel(false);
    }
  }
}

/* Location:
 * Qualified Name:     rx.internal.schedulers.ScheduledAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */