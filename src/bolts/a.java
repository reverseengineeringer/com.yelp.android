package bolts;

import android.annotation.SuppressLint;
import android.os.Build.VERSION;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

final class a
{
  static final int a = e + 1;
  static final int b = e * 2 + 1;
  private static final a c = new a();
  private static final int e = Runtime.getRuntime().availableProcessors();
  private final Executor d = new c(null);
  
  public static ExecutorService a()
  {
    ThreadPoolExecutor localThreadPoolExecutor = new ThreadPoolExecutor(a, b, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
    a(localThreadPoolExecutor, true);
    return localThreadPoolExecutor;
  }
  
  @SuppressLint({"NewApi"})
  public static void a(ThreadPoolExecutor paramThreadPoolExecutor, boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 9) {
      paramThreadPoolExecutor.allowCoreThreadTimeOut(paramBoolean);
    }
  }
  
  public static Executor b()
  {
    return cd;
  }
}

/* Location:
 * Qualified Name:     bolts.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */