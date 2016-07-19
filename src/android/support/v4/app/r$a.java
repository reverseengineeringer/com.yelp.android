package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.l;
import android.support.v4.content.l.b;
import android.support.v4.content.l.c;
import android.util.Log;
import com.yelp.android.g.c;
import com.yelp.android.g.j;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class r$a
  implements l.b<Object>, l.c<Object>
{
  final int a;
  final Bundle b;
  q.a<Object> c;
  l<Object> d;
  boolean e;
  boolean f;
  Object g;
  boolean h;
  boolean i;
  boolean j;
  boolean k;
  boolean l;
  boolean m;
  a n;
  
  public r$a(int paramInt, Bundle paramBundle, q.a<Object> parama)
  {
    a = paramBundle;
    b = parama;
    q.a locala;
    c = locala;
  }
  
  void a()
  {
    if ((i) && (j)) {
      h = true;
    }
    do
    {
      do
      {
        return;
      } while (h);
      h = true;
      if (r.a) {
        Log.v("LoaderManager", "  Starting: " + this);
      }
      if ((d == null) && (c != null)) {
        d = c.a(a, b);
      }
    } while (d == null);
    if ((d.getClass().isMemberClass()) && (!Modifier.isStatic(d.getClass().getModifiers()))) {
      throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + d);
    }
    if (!m)
    {
      d.a(a, this);
      d.a(this);
      m = true;
    }
    d.r();
  }
  
  public void a(l<Object> paraml)
  {
    if (r.a) {
      Log.v("LoaderManager", "onLoadCanceled: " + this);
    }
    if (l) {
      if (r.a) {
        Log.v("LoaderManager", "  Ignoring load canceled -- destroyed");
      }
    }
    do
    {
      do
      {
        return;
        if (o.b.a(a) == this) {
          break;
        }
      } while (!r.a);
      Log.v("LoaderManager", "  Ignoring load canceled -- not active");
      return;
      paraml = n;
    } while (paraml == null);
    if (r.a) {
      Log.v("LoaderManager", "  Switching to pending loader: " + paraml);
    }
    n = null;
    o.b.b(a, null);
    g();
    o.a(paraml);
  }
  
  public void a(l<Object> paraml, Object paramObject)
  {
    if (r.a) {
      Log.v("LoaderManager", "onLoadComplete: " + this);
    }
    if (l) {
      if (r.a) {
        Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
      }
    }
    do
    {
      do
      {
        return;
        if (o.b.a(a) == this) {
          break;
        }
      } while (!r.a);
      Log.v("LoaderManager", "  Ignoring load complete -- not active");
      return;
      a locala = n;
      if (locala != null)
      {
        if (r.a) {
          Log.v("LoaderManager", "  Switching to pending loader: " + locala);
        }
        n = null;
        o.b.b(a, null);
        g();
        o.a(locala);
        return;
      }
      if ((g != paramObject) || (!e))
      {
        g = paramObject;
        e = true;
        if (h) {
          b(paraml, paramObject);
        }
      }
      paraml = (a)o.c.a(a);
      if ((paraml != null) && (paraml != this))
      {
        f = false;
        paraml.g();
        o.c.c(a);
      }
    } while ((r.a(o) == null) || (o.a()));
    ao).d.h();
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(a);
    paramPrintWriter.print(" mArgs=");
    paramPrintWriter.println(b);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mCallbacks=");
    paramPrintWriter.println(c);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mLoader=");
    paramPrintWriter.println(d);
    if (d != null) {
      d.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    if ((e) || (f))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mHaveData=");
      paramPrintWriter.print(e);
      paramPrintWriter.print("  mDeliveredData=");
      paramPrintWriter.println(f);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mData=");
      paramPrintWriter.println(g);
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mStarted=");
    paramPrintWriter.print(h);
    paramPrintWriter.print(" mReportNextStart=");
    paramPrintWriter.print(k);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(l);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetaining=");
    paramPrintWriter.print(i);
    paramPrintWriter.print(" mRetainingStarted=");
    paramPrintWriter.print(j);
    paramPrintWriter.print(" mListenerRegistered=");
    paramPrintWriter.println(m);
    if (n != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(n);
      paramPrintWriter.println(":");
      n.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  void b()
  {
    if (r.a) {
      Log.v("LoaderManager", "  Retaining: " + this);
    }
    i = true;
    j = h;
    h = false;
    c = null;
  }
  
  void b(l<Object> paraml, Object paramObject)
  {
    String str;
    if (c != null)
    {
      if (r.a(o) == null) {
        break label161;
      }
      str = ao).d.u;
      ao).d.u = "onLoadFinished";
    }
    for (;;)
    {
      try
      {
        if (r.a) {
          Log.v("LoaderManager", "  onLoadFinished in " + paraml + ": " + paraml.c(paramObject));
        }
        c.a(paraml, paramObject);
        if (r.a(o) != null) {
          ao).d.u = str;
        }
        f = true;
        return;
      }
      finally
      {
        if (r.a(o) != null) {
          ao).d.u = str;
        }
      }
      label161:
      str = null;
    }
  }
  
  void c()
  {
    if (i)
    {
      if (r.a) {
        Log.v("LoaderManager", "  Finished Retaining: " + this);
      }
      i = false;
      if ((h != j) && (!h)) {
        e();
      }
    }
    if ((h) && (e) && (!k)) {
      b(d, g);
    }
  }
  
  void d()
  {
    if ((h) && (k))
    {
      k = false;
      if (e) {
        b(d, g);
      }
    }
  }
  
  void e()
  {
    if (r.a) {
      Log.v("LoaderManager", "  Stopping: " + this);
    }
    h = false;
    if ((!i) && (d != null) && (m))
    {
      m = false;
      d.a(this);
      d.b(this);
      d.u();
    }
  }
  
  void f()
  {
    if (r.a) {
      Log.v("LoaderManager", "  Canceling: " + this);
    }
    if ((h) && (d != null) && (m) && (!d.s())) {
      a(d);
    }
  }
  
  void g()
  {
    if (r.a) {
      Log.v("LoaderManager", "  Destroying: " + this);
    }
    l = true;
    boolean bool = f;
    f = false;
    String str;
    if ((c != null) && (d != null) && (e) && (bool))
    {
      if (r.a) {
        Log.v("LoaderManager", "  Reseting: " + this);
      }
      if (r.a(o) == null) {
        break label280;
      }
      str = ao).d.u;
      ao).d.u = "onLoaderReset";
    }
    for (;;)
    {
      try
      {
        c.a(d);
        if (r.a(o) != null) {
          ao).d.u = str;
        }
        c = null;
        g = null;
        e = false;
        if (d != null)
        {
          if (m)
          {
            m = false;
            d.a(this);
            d.b(this);
          }
          d.x();
        }
        if (n != null) {
          n.g();
        }
        return;
      }
      finally
      {
        if (r.a(o) != null) {
          ao).d.u = str;
        }
      }
      label280:
      str = null;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("LoaderInfo{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" #");
    localStringBuilder.append(a);
    localStringBuilder.append(" : ");
    c.a(d, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.r.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */