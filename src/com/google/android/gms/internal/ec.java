package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.a.a;
import com.google.android.gms.dynamic.d;
import com.yelp.android.bc.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@fv
public class ec
  extends dx.a
{
  private final j a;
  
  public ec(j paramj)
  {
    a = paramj;
  }
  
  public String a()
  {
    return a.e();
  }
  
  public void a(com.google.android.gms.dynamic.c paramc)
  {
    a.b((View)d.a(paramc));
  }
  
  public List b()
  {
    Object localObject = a.f();
    if (localObject != null)
    {
      ArrayList localArrayList = new ArrayList();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        a.a locala = (a.a)((Iterator)localObject).next();
        localArrayList.add(new com.google.android.gms.ads.internal.formats.c(locala.a(), locala.b(), locala.c()));
      }
      return localArrayList;
    }
    return null;
  }
  
  public void b(com.google.android.gms.dynamic.c paramc)
  {
    a.a((View)d.a(paramc));
  }
  
  public String c()
  {
    return a.g();
  }
  
  public bd d()
  {
    a.a locala = a.h();
    if (locala != null) {
      return new com.google.android.gms.ads.internal.formats.c(locala.a(), locala.b(), locala.c());
    }
    return null;
  }
  
  public String e()
  {
    return a.i();
  }
  
  public double f()
  {
    return a.j();
  }
  
  public String g()
  {
    return a.k();
  }
  
  public String h()
  {
    return a.l();
  }
  
  public void i()
  {
    a.d();
  }
  
  public boolean j()
  {
    return a.a();
  }
  
  public boolean k()
  {
    return a.b();
  }
  
  public Bundle l()
  {
    return a.c();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */