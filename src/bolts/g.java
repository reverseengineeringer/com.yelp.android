package bolts;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

final class g
{
  private static final g a = new g();
  private final ExecutorService b;
  private final Executor c;
  
  private g()
  {
    if (!c()) {}
    for (ExecutorService localExecutorService = Executors.newCachedThreadPool();; localExecutorService = a.a())
    {
      b = localExecutorService;
      c = new i(null);
      return;
    }
  }
  
  public static ExecutorService a()
  {
    return ab;
  }
  
  static Executor b()
  {
    return ac;
  }
  
  private static boolean c()
  {
    String str = System.getProperty("java.runtime.name");
    if (str == null) {
      return false;
    }
    return str.toLowerCase(Locale.US).contains("android");
  }
}

/* Location:
 * Qualified Name:     bolts.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */