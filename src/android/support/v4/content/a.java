package android.support.v4.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import com.yelp.android.e.s;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class a<D>
  extends r<D>
{
  volatile a<D>.b a;
  volatile a<D>.b b;
  long c;
  long d = -10000L;
  Handler e;
  
  public a(Context paramContext)
  {
    super(paramContext);
  }
  
  void a(a<D>.b parama, D paramD)
  {
    a(paramD);
    if (b == parama)
    {
      rollbackContentChanged();
      d = SystemClock.uptimeMillis();
      b = null;
      b();
    }
  }
  
  public void a(D paramD) {}
  
  public boolean a()
  {
    if (a != null)
    {
      if (b != null)
      {
        if (a.b)
        {
          a.b = false;
          e.removeCallbacks(a);
        }
        a = null;
      }
    }
    else {
      return false;
    }
    if (a.b)
    {
      a.b = false;
      e.removeCallbacks(a);
      a = null;
      return false;
    }
    boolean bool = a.a(false);
    if (bool) {
      b = a;
    }
    a = null;
    return bool;
  }
  
  void b()
  {
    if ((b == null) && (a != null))
    {
      if (a.b)
      {
        a.b = false;
        e.removeCallbacks(a);
      }
      if ((c > 0L) && (SystemClock.uptimeMillis() < d + c))
      {
        a.b = true;
        e.postAtTime(a, d + c);
      }
    }
    else
    {
      return;
    }
    a.a(ModernAsyncTask.d, (Void[])null);
  }
  
  void b(a<D>.b parama, D paramD)
  {
    if (a != parama)
    {
      a(parama, paramD);
      return;
    }
    if (isAbandoned())
    {
      a(paramD);
      return;
    }
    commitContentChanged();
    d = SystemClock.uptimeMillis();
    a = null;
    deliverResult(paramD);
  }
  
  public abstract D c();
  
  protected D d()
  {
    return (D)c();
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    if (a != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTask=");
      paramPrintWriter.print(a);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(a.b);
    }
    if (b != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mCancellingTask=");
      paramPrintWriter.print(b);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(b.b);
    }
    if (c != 0L)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mUpdateThrottle=");
      s.a(c, paramPrintWriter);
      paramPrintWriter.print(" mLastLoadCompleteTime=");
      s.a(d, SystemClock.uptimeMillis(), paramPrintWriter);
      paramPrintWriter.println();
    }
  }
  
  protected void onForceLoad()
  {
    super.onForceLoad();
    a();
    a = new b(this);
    b();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */