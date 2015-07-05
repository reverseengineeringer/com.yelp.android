package android.support.v4.content;

import android.os.Process;
import java.util.concurrent.atomic.AtomicBoolean;

class z
  extends ae<Params, Result>
{
  z(ModernAsyncTask paramModernAsyncTask)
  {
    super(null);
  }
  
  public Result call()
  {
    ModernAsyncTask.a(a).set(true);
    Process.setThreadPriority(10);
    return (Result)ModernAsyncTask.a(a, a.a(b));
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */