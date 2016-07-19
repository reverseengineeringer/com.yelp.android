package rx.internal.util;

import com.yelp.android.di.j;
import com.yelp.android.di.r;
import java.io.PrintStream;
import java.util.Queue;
import rx.f;
import rx.internal.operators.NotificationLite;

public class d
  implements f
{
  static int a;
  public static final int b;
  public static a<Queue<Object>> c;
  public static a<Queue<Object>> d;
  private static final NotificationLite<Object> e = ;
  private Queue<Object> f;
  private final a<Queue<Object>> g;
  
  static
  {
    a = 128;
    if (b.a()) {
      a = 16;
    }
    String str = System.getProperty("rx.ring-buffer.size");
    if (str != null) {}
    try
    {
      a = Integer.parseInt(str);
      b = a;
      c = new a()
      {
        protected r<Object> c()
        {
          return new r(d.b);
        }
      };
      d = new a()
      {
        protected j<Object> c()
        {
          return new j(d.b);
        }
      };
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        System.err.println("Failed to set 'rx.buffer.size' with value " + str + " => " + localException.getMessage());
      }
    }
  }
  
  public void a()
  {
    try
    {
      Queue localQueue = f;
      a locala = g;
      if ((locala != null) && (localQueue != null))
      {
        localQueue.clear();
        f = null;
        locala.a(localQueue);
      }
      return;
    }
    finally {}
  }
  
  public boolean isUnsubscribed()
  {
    return f == null;
  }
  
  public void unsubscribe()
  {
    a();
  }
}

/* Location:
 * Qualified Name:     rx.internal.util.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */