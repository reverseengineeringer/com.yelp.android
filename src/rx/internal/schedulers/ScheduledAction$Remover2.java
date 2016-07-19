package rx.internal.schedulers;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.f;
import rx.internal.util.e;

final class ScheduledAction$Remover2
  extends AtomicBoolean
  implements f
{
  private static final long serialVersionUID = 247232374289553518L;
  final e parent;
  final ScheduledAction s;
  
  public ScheduledAction$Remover2(ScheduledAction paramScheduledAction, e parame)
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

/* Location:
 * Qualified Name:     rx.internal.schedulers.ScheduledAction.Remover2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */