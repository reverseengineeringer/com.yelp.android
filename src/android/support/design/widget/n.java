package android.support.design.widget;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

class n
{
  private static n a;
  private final Object b = new Object();
  private final Handler c = new Handler(Looper.getMainLooper(), new Handler.Callback()
  {
    public boolean handleMessage(Message paramAnonymousMessage)
    {
      switch (what)
      {
      default: 
        return false;
      }
      n.a(n.this, (n.b)obj);
      return true;
    }
  });
  private b d;
  private b e;
  
  static n a()
  {
    if (a == null) {
      a = new n();
    }
    return a;
  }
  
  private void a(b paramb)
  {
    if (b.b(paramb) == -2) {
      return;
    }
    int i = 2750;
    if (b.b(paramb) > 0) {
      i = b.b(paramb);
    }
    for (;;)
    {
      c.removeCallbacksAndMessages(paramb);
      c.sendMessageDelayed(Message.obtain(c, 0, paramb), i);
      return;
      if (b.b(paramb) == -1) {
        i = 1500;
      }
    }
  }
  
  private boolean a(b paramb, int paramInt)
  {
    paramb = (a)b.a(paramb).get();
    if (paramb != null)
    {
      paramb.a(paramInt);
      return true;
    }
    return false;
  }
  
  private void b()
  {
    if (e != null)
    {
      d = e;
      e = null;
      a locala = (a)b.a(d).get();
      if (locala != null) {
        locala.a();
      }
    }
    else
    {
      return;
    }
    d = null;
  }
  
  private void b(b paramb)
  {
    synchronized (b)
    {
      if ((d == paramb) || (e == paramb)) {
        a(paramb, 2);
      }
      return;
    }
  }
  
  private boolean e(a parama)
  {
    return (d != null) && (d.a(parama));
  }
  
  private boolean f(a parama)
  {
    return (e != null) && (e.a(parama));
  }
  
  public void a(a parama)
  {
    synchronized (b)
    {
      if (e(parama))
      {
        d = null;
        if (e != null) {
          b();
        }
      }
      return;
    }
  }
  
  public void a(a parama, int paramInt)
  {
    synchronized (b)
    {
      if (e(parama)) {
        a(d, paramInt);
      }
      while (!f(parama)) {
        return;
      }
      a(e, paramInt);
    }
  }
  
  public void b(a parama)
  {
    synchronized (b)
    {
      if (e(parama)) {
        a(d);
      }
      return;
    }
  }
  
  public void c(a parama)
  {
    synchronized (b)
    {
      if (e(parama)) {
        c.removeCallbacksAndMessages(d);
      }
      return;
    }
  }
  
  public void d(a parama)
  {
    synchronized (b)
    {
      if (e(parama)) {
        a(d);
      }
      return;
    }
  }
  
  static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(int paramInt);
  }
  
  private static class b
  {
    private final WeakReference<n.a> a;
    private int b;
    
    boolean a(n.a parama)
    {
      return (parama != null) && (a.get() == parama);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */