package bolts;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

class i
  implements Executor
{
  private ThreadLocal<Integer> a = new ThreadLocal();
  
  private int a()
  {
    Integer localInteger2 = (Integer)a.get();
    Integer localInteger1 = localInteger2;
    if (localInteger2 == null) {
      localInteger1 = Integer.valueOf(0);
    }
    int i = localInteger1.intValue() + 1;
    a.set(Integer.valueOf(i));
    return i;
  }
  
  private int b()
  {
    Integer localInteger2 = (Integer)a.get();
    Integer localInteger1 = localInteger2;
    if (localInteger2 == null) {
      localInteger1 = Integer.valueOf(0);
    }
    int i = localInteger1.intValue() - 1;
    if (i == 0)
    {
      a.remove();
      return i;
    }
    a.set(Integer.valueOf(i));
    return i;
  }
  
  public void execute(Runnable paramRunnable)
  {
    if (a() <= 15) {}
    for (;;)
    {
      try
      {
        paramRunnable.run();
        return;
      }
      finally
      {
        b();
      }
      g.a().execute(paramRunnable);
    }
  }
}

/* Location:
 * Qualified Name:     bolts.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */