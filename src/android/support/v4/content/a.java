package android.support.v4.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.os.OperationCanceledException;
import com.yelp.android.g.k;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

public abstract class a<D>
  extends l<D>
{
  volatile a<D>.a a;
  volatile a<D>.a b;
  long c;
  long d = -10000L;
  Handler e;
  private final Executor f;
  
  public a(Context paramContext)
  {
    this(paramContext, ModernAsyncTask.c);
  }
  
  private a(Context paramContext, Executor paramExecutor)
  {
    super(paramContext);
    f = paramExecutor;
  }
  
  protected void a()
  {
    super.a();
    s();
    a = new a();
    c();
  }
  
  void a(a<D>.a parama, D paramD)
  {
    a(paramD);
    if (b == parama)
    {
      A();
      d = SystemClock.uptimeMillis();
      b = null;
      l();
      c();
    }
  }
  
  public void a(D paramD) {}
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    if (a != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTask=");
      paramPrintWriter.print(a);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(a.a);
    }
    if (b != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mCancellingTask=");
      paramPrintWriter.print(b);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(b.a);
    }
    if (c != 0L)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mUpdateThrottle=");
      k.a(c, paramPrintWriter);
      paramPrintWriter.print(" mLastLoadCompleteTime=");
      k.a(d, SystemClock.uptimeMillis(), paramPrintWriter);
      paramPrintWriter.println();
    }
  }
  
  void b(a<D>.a parama, D paramD)
  {
    if (a != parama)
    {
      a(parama, paramD);
      return;
    }
    if (p())
    {
      a(paramD);
      return;
    }
    z();
    d = SystemClock.uptimeMillis();
    a = null;
    b(paramD);
  }
  
  protected boolean b()
  {
    if (a != null)
    {
      if (b != null)
      {
        if (a.a)
        {
          a.a = false;
          e.removeCallbacks(a);
        }
        a = null;
      }
    }
    else {
      return false;
    }
    if (a.a)
    {
      a.a = false;
      e.removeCallbacks(a);
      a = null;
      return false;
    }
    boolean bool = a.a(false);
    if (bool)
    {
      b = a;
      f();
    }
    a = null;
    return bool;
  }
  
  void c()
  {
    if ((b == null) && (a != null))
    {
      if (a.a)
      {
        a.a = false;
        e.removeCallbacks(a);
      }
      if ((c > 0L) && (SystemClock.uptimeMillis() < d + c))
      {
        a.a = true;
        e.postAtTime(a, d + c);
      }
    }
    else
    {
      return;
    }
    a.a(f, (Void[])null);
  }
  
  public abstract D d();
  
  protected D e()
  {
    return (D)d();
  }
  
  public void f() {}
  
  public boolean g()
  {
    return b != null;
  }
  
  final class a
    extends ModernAsyncTask<Void, Void, D>
    implements Runnable
  {
    boolean a;
    private final CountDownLatch d = new CountDownLatch(1);
    
    a() {}
    
    protected D a(Void... paramVarArgs)
    {
      try
      {
        paramVarArgs = e();
        return paramVarArgs;
      }
      catch (OperationCanceledException paramVarArgs)
      {
        if (!c()) {
          throw paramVarArgs;
        }
      }
      return null;
    }
    
    protected void a(D paramD)
    {
      try
      {
        b(this, paramD);
        return;
      }
      finally
      {
        d.countDown();
      }
    }
    
    protected void b(D paramD)
    {
      try
      {
        a(this, paramD);
        return;
      }
      finally
      {
        d.countDown();
      }
    }
    
    public void run()
    {
      a = false;
      c();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */