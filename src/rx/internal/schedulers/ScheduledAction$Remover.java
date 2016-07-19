package rx.internal.schedulers;

import com.yelp.android.dm.b;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.f;

final class ScheduledAction$Remover
  extends AtomicBoolean
  implements f
{
  private static final long serialVersionUID = 247232374289553518L;
  final b parent;
  final ScheduledAction s;
  
  public ScheduledAction$Remover(ScheduledAction paramScheduledAction, b paramb)
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

/* Location:
 * Qualified Name:     rx.internal.schedulers.ScheduledAction.Remover
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */