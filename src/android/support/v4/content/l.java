package android.support.v4.content;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import com.yelp.android.g.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class l<D>
{
  int n;
  c<D> o;
  b<D> p;
  Context q;
  boolean r = false;
  boolean s = false;
  boolean t = true;
  boolean u = false;
  boolean v = false;
  
  public l(Context paramContext)
  {
    q = paramContext.getApplicationContext();
  }
  
  public void A()
  {
    if (v) {
      u = true;
    }
  }
  
  public void B()
  {
    if (r)
    {
      t();
      return;
    }
    u = true;
  }
  
  protected void a() {}
  
  public void a(int paramInt, c<D> paramc)
  {
    if (o != null) {
      throw new IllegalStateException("There is already a listener registered");
    }
    o = paramc;
    n = paramInt;
  }
  
  public void a(b<D> paramb)
  {
    if (p != null) {
      throw new IllegalStateException("There is already a listener registered");
    }
    p = paramb;
  }
  
  public void a(c<D> paramc)
  {
    if (o == null) {
      throw new IllegalStateException("No listener register");
    }
    if (o != paramc) {
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    o = null;
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(n);
    paramPrintWriter.print(" mListener=");
    paramPrintWriter.println(o);
    if ((r) || (u) || (v))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.print(r);
      paramPrintWriter.print(" mContentChanged=");
      paramPrintWriter.print(u);
      paramPrintWriter.print(" mProcessingChange=");
      paramPrintWriter.println(v);
    }
    if ((s) || (t))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAbandoned=");
      paramPrintWriter.print(s);
      paramPrintWriter.print(" mReset=");
      paramPrintWriter.println(t);
    }
  }
  
  public void b(b<D> paramb)
  {
    if (p == null) {
      throw new IllegalStateException("No listener register");
    }
    if (p != paramb) {
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    p = null;
  }
  
  public void b(D paramD)
  {
    if (o != null) {
      o.a(this, paramD);
    }
  }
  
  protected boolean b()
  {
    return false;
  }
  
  public String c(D paramD)
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    c.a(paramD, localStringBuilder);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  protected void i() {}
  
  protected void j() {}
  
  protected void k() {}
  
  public void l()
  {
    if (p != null) {
      p.a(this);
    }
  }
  
  public Context m()
  {
    return q;
  }
  
  public int n()
  {
    return n;
  }
  
  public boolean o()
  {
    return r;
  }
  
  public boolean p()
  {
    return s;
  }
  
  public boolean q()
  {
    return t;
  }
  
  public final void r()
  {
    r = true;
    t = false;
    s = false;
    i();
  }
  
  public boolean s()
  {
    return b();
  }
  
  public void t()
  {
    a();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    c.a(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(n);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public void u()
  {
    r = false;
    j();
  }
  
  public void v()
  {
    s = true;
    w();
  }
  
  protected void w() {}
  
  public void x()
  {
    k();
    t = true;
    r = false;
    s = false;
    u = false;
    v = false;
  }
  
  public boolean y()
  {
    boolean bool = u;
    u = false;
    v |= bool;
    return bool;
  }
  
  public void z()
  {
    v = false;
  }
  
  public final class a
    extends ContentObserver
  {
    public a()
    {
      super();
    }
    
    public boolean deliverSelfNotifications()
    {
      return true;
    }
    
    public void onChange(boolean paramBoolean)
    {
      B();
    }
  }
  
  public static abstract interface b<D>
  {
    public abstract void a(l<D> paraml);
  }
  
  public static abstract interface c<D>
  {
    public abstract void a(l<D> paraml, D paramD);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */