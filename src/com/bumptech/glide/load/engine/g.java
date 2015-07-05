package com.bumptech.glide.load.engine;

import android.os.MessageQueue.IdleHandler;
import com.bumptech.glide.load.b;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Map;

class g
  implements MessageQueue.IdleHandler
{
  private final Map<b, WeakReference<p<?>>> a;
  private final ReferenceQueue<p<?>> b;
  
  public g(Map<b, WeakReference<p<?>>> paramMap, ReferenceQueue<p<?>> paramReferenceQueue)
  {
    a = paramMap;
    b = paramReferenceQueue;
  }
  
  public boolean queueIdle()
  {
    h localh = (h)b.poll();
    if (localh != null) {
      a.remove(h.a(localh));
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */