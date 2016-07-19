package rx.internal.schedulers;

import java.util.concurrent.Future;
import rx.f;

final class ScheduledAction$a
  implements f
{
  private final Future<?> b;
  
  ScheduledAction$a(Future<?> paramFuture)
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
    if (a.get() != Thread.currentThread())
    {
      b.cancel(true);
      return;
    }
    b.cancel(false);
  }
}

/* Location:
 * Qualified Name:     rx.internal.schedulers.ScheduledAction.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */