package io.fabric.sdk.android;

import android.content.Context;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.b;
import io.fabric.sdk.android.services.concurrency.i;
import java.io.File;
import java.util.Collection;

public abstract class h<Result>
  implements Comparable<h>
{
  c e;
  g<Result> f = new g(this);
  Context g;
  f<Result> h;
  IdManager i;
  
  protected IdManager A()
  {
    return i;
  }
  
  public Context B()
  {
    return g;
  }
  
  public c C()
  {
    return e;
  }
  
  public String D()
  {
    return ".Fabric" + File.separator + b();
  }
  
  boolean E()
  {
    return (b)getClass().getAnnotation(b.class) != null;
  }
  
  protected Collection<i> F()
  {
    return f.c();
  }
  
  public int a(h paramh)
  {
    if (b(paramh)) {}
    do
    {
      return 1;
      if (paramh.b(this)) {
        return -1;
      }
    } while ((E()) && (!paramh.E()));
    if ((!E()) && (paramh.E())) {
      return -1;
    }
    return 0;
  }
  
  public abstract String a();
  
  void a(Context paramContext, c paramc, f<Result> paramf, IdManager paramIdManager)
  {
    e = paramc;
    g = new d(paramContext, b(), D());
    h = paramf;
    i = paramIdManager;
  }
  
  protected void a(Result paramResult) {}
  
  public abstract String b();
  
  protected void b(Result paramResult) {}
  
  boolean b(h paramh)
  {
    Object localObject = (b)getClass().getAnnotation(b.class);
    if (localObject != null)
    {
      localObject = ((b)localObject).a();
      int k = localObject.length;
      int j = 0;
      while (j < k)
      {
        if (localObject[j].equals(paramh.getClass())) {
          return true;
        }
        j += 1;
      }
    }
    return false;
  }
  
  protected boolean c_()
  {
    return true;
  }
  
  protected abstract Result f();
  
  final void z()
  {
    f.a(e.f(), new Void[] { (Void)null });
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */