package com.google.android.gms.analytics.internal;

import android.content.Context;
import com.google.android.gms.analytics.c;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import com.google.android.gms.internal.jv;

public class u
{
  private final Context a;
  private final Context b;
  
  public u(Context paramContext)
  {
    zzx.zzz(paramContext);
    paramContext = paramContext.getApplicationContext();
    zzx.zzb(paramContext, "Application context can't be null");
    a = paramContext;
    b = paramContext;
  }
  
  public Context a()
  {
    return a;
  }
  
  protected ag a(t paramt)
  {
    return new ag(paramt);
  }
  
  protected com.google.android.gms.measurement.h a(Context paramContext)
  {
    return com.google.android.gms.measurement.h.a(paramContext);
  }
  
  public Context b()
  {
    return b;
  }
  
  protected y b(t paramt)
  {
    return new y(paramt);
  }
  
  protected a c(t paramt)
  {
    return new a(paramt);
  }
  
  protected aa d(t paramt)
  {
    return new aa(paramt);
  }
  
  protected o e(t paramt)
  {
    return new o(paramt);
  }
  
  protected g f(t paramt)
  {
    return new g(paramt);
  }
  
  protected ad g(t paramt)
  {
    return new ad(paramt);
  }
  
  protected jt h(t paramt)
  {
    return jv.d();
  }
  
  protected c i(t paramt)
  {
    return new c(paramt);
  }
  
  z j(t paramt)
  {
    return new z(paramt, this);
  }
  
  h k(t paramt)
  {
    return new h(paramt);
  }
  
  protected p l(t paramt)
  {
    return new p(paramt, this);
  }
  
  public x m(t paramt)
  {
    return new x(paramt);
  }
  
  public i n(t paramt)
  {
    return new i(paramt);
  }
  
  public w o(t paramt)
  {
    return new w(paramt);
  }
  
  public ah p(t paramt)
  {
    return new ah(paramt);
  }
  
  public j q(t paramt)
  {
    return new j(paramt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */