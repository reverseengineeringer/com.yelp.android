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

class r
  extends q
{
  static boolean a = false;
  final j<a> b = new j();
  final j<a> c = new j();
  final String d;
  boolean e;
  boolean f;
  boolean g;
  private k h;
  
  r(String paramString, k paramk, boolean paramBoolean)
  {
    d = paramString;
    h = paramk;
    e = paramBoolean;
  }
  
  private a c(int paramInt, Bundle paramBundle, q.a<Object> parama)
  {
    a locala = new a(paramInt, paramBundle, parama);
    d = parama.a(paramInt, paramBundle);
    return locala;
  }
  
  private a d(int paramInt, Bundle paramBundle, q.a<Object> parama)
  {
    try
    {
      g = true;
      paramBundle = c(paramInt, paramBundle, parama);
      a(paramBundle);
      return paramBundle;
    }
    finally
    {
      g = false;
    }
  }
  
  public <D> l<D> a(int paramInt, Bundle paramBundle, q.a<D> parama)
  {
    if (g) {
      throw new IllegalStateException("Called while creating a loader");
    }
    a locala = (a)b.a(paramInt);
    if (a) {
      Log.v("LoaderManager", "initLoader in " + this + ": args=" + paramBundle);
    }
    if (locala == null)
    {
      parama = d(paramInt, paramBundle, parama);
      paramBundle = parama;
      if (a) {
        Log.v("LoaderManager", "  Created new loader " + parama);
      }
    }
    for (paramBundle = parama;; paramBundle = locala)
    {
      if ((e) && (e)) {
        paramBundle.b(d, g);
      }
      return d;
      if (a) {
        Log.v("LoaderManager", "  Re-using existing loader " + locala);
      }
      c = parama;
    }
  }
  
  void a(k paramk)
  {
    h = paramk;
  }
  
  void a(a parama)
  {
    b.b(a, parama);
    if (e) {
      parama.a();
    }
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int j = 0;
    String str;
    int i;
    a locala;
    if (b.b() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Loaders:");
      str = paramString + "    ";
      i = 0;
      while (i < b.b())
      {
        locala = (a)b.e(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(b.d(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(locala.toString());
        locala.a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
    if (c.b() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Inactive Loaders:");
      str = paramString + "    ";
      i = j;
      while (i < c.b())
      {
        locala = (a)c.e(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(c.d(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(locala.toString());
        locala.a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
  }
  
  public boolean a()
  {
    int j = b.b();
    int i = 0;
    boolean bool2 = false;
    if (i < j)
    {
      a locala = (a)b.e(i);
      if ((h) && (!f)) {}
      for (boolean bool1 = true;; bool1 = false)
      {
        bool2 |= bool1;
        i += 1;
        break;
      }
    }
    return bool2;
  }
  
  public <D> l<D> b(int paramInt, Bundle paramBundle, q.a<D> parama)
  {
    if (g) {
      throw new IllegalStateException("Called while creating a loader");
    }
    a locala1 = (a)b.a(paramInt);
    if (a) {
      Log.v("LoaderManager", "restartLoader in " + this + ": args=" + paramBundle);
    }
    if (locala1 != null)
    {
      a locala2 = (a)c.a(paramInt);
      if (locala2 == null) {
        break label323;
      }
      if (!e) {
        break label173;
      }
      if (a) {
        Log.v("LoaderManager", "  Removing last inactive loader: " + locala1);
      }
      f = false;
      locala2.g();
      d.v();
      c.b(paramInt, locala1);
    }
    for (;;)
    {
      return dd;
      label173:
      if (!h)
      {
        if (a) {
          Log.v("LoaderManager", "  Current loader is stopped; replacing");
        }
        b.b(paramInt, null);
        locala1.g();
      }
      else
      {
        if (a) {
          Log.v("LoaderManager", "  Current loader is running; attempting to cancel");
        }
        locala1.f();
        if (n != null)
        {
          if (a) {
            Log.v("LoaderManager", "  Removing pending loader: " + n);
          }
          n.g();
          n = null;
        }
        if (a) {
          Log.v("LoaderManager", "  Enqueuing as new pending loader");
        }
        n = c(paramInt, paramBundle, parama);
        return n.d;
        label323:
        if (a) {
          Log.v("LoaderManager", "  Making last loader inactive: " + locala1);
        }
        d.v();
        c.b(paramInt, locala1);
      }
    }
  }
  
  void b()
  {
    if (a) {
      Log.v("LoaderManager", "Starting in " + this);
    }
    if (e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStart when already started: " + this, localRuntimeException);
    }
    for (;;)
    {
      return;
      e = true;
      int i = b.b() - 1;
      while (i >= 0)
      {
        ((a)b.e(i)).a();
        i -= 1;
      }
    }
  }
  
  void c()
  {
    if (a) {
      Log.v("LoaderManager", "Stopping in " + this);
    }
    if (!e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStop when not started: " + this, localRuntimeException);
      return;
    }
    int i = b.b() - 1;
    while (i >= 0)
    {
      ((a)b.e(i)).e();
      i -= 1;
    }
    e = false;
  }
  
  void d()
  {
    if (a) {
      Log.v("LoaderManager", "Retaining in " + this);
    }
    if (!e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doRetain when not started: " + this, localRuntimeException);
    }
    for (;;)
    {
      return;
      f = true;
      e = false;
      int i = b.b() - 1;
      while (i >= 0)
      {
        ((a)b.e(i)).b();
        i -= 1;
      }
    }
  }
  
  void e()
  {
    if (f)
    {
      if (a) {
        Log.v("LoaderManager", "Finished Retaining in " + this);
      }
      f = false;
      int i = b.b() - 1;
      while (i >= 0)
      {
        ((a)b.e(i)).c();
        i -= 1;
      }
    }
  }
  
  void f()
  {
    int i = b.b() - 1;
    while (i >= 0)
    {
      b.e(i)).k = true;
      i -= 1;
    }
  }
  
  void g()
  {
    int i = b.b() - 1;
    while (i >= 0)
    {
      ((a)b.e(i)).d();
      i -= 1;
    }
  }
  
  void h()
  {
    if (!f)
    {
      if (a) {
        Log.v("LoaderManager", "Destroying Active in " + this);
      }
      i = b.b() - 1;
      while (i >= 0)
      {
        ((a)b.e(i)).g();
        i -= 1;
      }
      b.c();
    }
    if (a) {
      Log.v("LoaderManager", "Destroying Inactive in " + this);
    }
    int i = c.b() - 1;
    while (i >= 0)
    {
      ((a)c.e(i)).g();
      i -= 1;
    }
    c.c();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    c.a(h, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
  
  final class a
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
    
    public a(Bundle paramBundle, q.a<Object> parama)
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
          if (b.a(a) == this) {
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
      b.b(a, null);
      g();
      a(paraml);
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
          if (b.a(a) == this) {
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
          b.b(a, null);
          g();
          a(locala);
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
        paraml = (a)c.a(a);
        if ((paraml != null) && (paraml != this))
        {
          f = false;
          paraml.g();
          c.c(a);
        }
      } while ((r.a(r.this) == null) || (a()));
      ad.h();
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
        if (r.a(r.this) == null) {
          break label161;
        }
        str = ad.u;
        ad.u = "onLoadFinished";
      }
      for (;;)
      {
        try
        {
          if (r.a) {
            Log.v("LoaderManager", "  onLoadFinished in " + paraml + ": " + paraml.c(paramObject));
          }
          c.a(paraml, paramObject);
          if (r.a(r.this) != null) {
            ad.u = str;
          }
          f = true;
          return;
        }
        finally
        {
          if (r.a(r.this) != null) {
            ad.u = str;
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
        if (r.a(r.this) == null) {
          break label280;
        }
        str = ad.u;
        ad.u = "onLoaderReset";
      }
      for (;;)
      {
        try
        {
          c.a(d);
          if (r.a(r.this) != null) {
            ad.u = str;
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
          if (r.a(r.this) != null) {
            ad.u = str;
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
}

/* Location:
 * Qualified Name:     android.support.v4.app.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */