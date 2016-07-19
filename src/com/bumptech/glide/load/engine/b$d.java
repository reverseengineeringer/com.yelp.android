package com.bumptech.glide.load.engine;

import android.os.MessageQueue.IdleHandler;
import com.bumptech.glide.load.b;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Map;

class b$d
  implements MessageQueue.IdleHandler
{
  private final Map<b, WeakReference<g<?>>> a;
  private final ReferenceQueue<g<?>> b;
  
  public b$d(Map<b, WeakReference<g<?>>> paramMap, ReferenceQueue<g<?>> paramReferenceQueue)
  {
    a = paramMap;
    b = paramReferenceQueue;
  }
  
  public boolean queueIdle()
  {
    b.e locale = (b.e)b.poll();
    if (locale != null) {
      a.remove(b.e.a(locale));
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */