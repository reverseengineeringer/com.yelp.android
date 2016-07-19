package pl.droidsonroids.gif;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

class g
  extends Handler
{
  private final WeakReference<c> a;
  
  public g(c paramc)
  {
    super(Looper.getMainLooper());
    a = new WeakReference(paramc);
  }
  
  public void handleMessage(Message paramMessage)
  {
    Object localObject = (c)a.get();
    if (localObject == null) {}
    for (;;)
    {
      return;
      if (what == -1)
      {
        ((c)localObject).invalidateSelf();
        return;
      }
      localObject = g.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((a)((Iterator)localObject).next()).a(what);
      }
    }
  }
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */