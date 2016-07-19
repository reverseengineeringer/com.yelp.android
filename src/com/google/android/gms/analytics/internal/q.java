package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.analytics.c;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import com.google.android.gms.measurement.h;

public class q
{
  private final t a;
  
  protected q(t paramt)
  {
    zzx.zzz(paramt);
    a = paramt;
  }
  
  private static String a(Object paramObject)
  {
    if (paramObject == null) {
      return "";
    }
    if ((paramObject instanceof String)) {
      return (String)paramObject;
    }
    if ((paramObject instanceof Boolean))
    {
      if (paramObject == Boolean.TRUE) {}
      for (paramObject = "true";; paramObject = "false") {
        return (String)paramObject;
      }
    }
    if ((paramObject instanceof Throwable)) {
      return ((Throwable)paramObject).toString();
    }
    return paramObject.toString();
  }
  
  private void a(int paramInt, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    Object localObject = null;
    if (a != null) {
      localObject = a.g();
    }
    if (localObject != null) {
      ((g)localObject).a(paramInt, paramString, paramObject1, paramObject2, paramObject3);
    }
    do
    {
      return;
      localObject = (String)ak.c.a();
    } while (!Log.isLoggable((String)localObject, paramInt));
    Log.println(paramInt, (String)localObject, c(paramString, paramObject1, paramObject2, paramObject3));
  }
  
  protected static String c(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    String str1 = paramString;
    if (paramString == null) {
      str1 = "";
    }
    String str2 = a(paramObject1);
    paramObject2 = a(paramObject2);
    paramObject3 = a(paramObject3);
    StringBuilder localStringBuilder = new StringBuilder();
    paramString = "";
    if (!TextUtils.isEmpty(str1))
    {
      localStringBuilder.append(str1);
      paramString = ": ";
    }
    paramObject1 = paramString;
    if (!TextUtils.isEmpty(str2))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append(str2);
      paramObject1 = ", ";
    }
    paramString = (String)paramObject1;
    if (!TextUtils.isEmpty((CharSequence)paramObject2))
    {
      localStringBuilder.append((String)paramObject1);
      localStringBuilder.append((String)paramObject2);
      paramString = ", ";
    }
    if (!TextUtils.isEmpty((CharSequence)paramObject3))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append((String)paramObject3);
    }
    return localStringBuilder.toString();
  }
  
  protected ag A()
  {
    return a.r();
  }
  
  public boolean B()
  {
    return Log.isLoggable((String)ak.c.a(), 2);
  }
  
  public void a(String paramString, Object paramObject)
  {
    a(2, paramString, paramObject, null, null);
  }
  
  public void a(String paramString, Object paramObject1, Object paramObject2)
  {
    a(2, paramString, paramObject1, paramObject2, null);
  }
  
  public void a(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(3, paramString, paramObject1, paramObject2, paramObject3);
  }
  
  public void b(String paramString)
  {
    a(2, paramString, null, null, null);
  }
  
  public void b(String paramString, Object paramObject)
  {
    a(3, paramString, paramObject, null, null);
  }
  
  public void b(String paramString, Object paramObject1, Object paramObject2)
  {
    a(3, paramString, paramObject1, paramObject2, null);
  }
  
  public void b(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(5, paramString, paramObject1, paramObject2, paramObject3);
  }
  
  public void c(String paramString)
  {
    a(3, paramString, null, null, null);
  }
  
  public void c(String paramString, Object paramObject)
  {
    a(4, paramString, paramObject, null, null);
  }
  
  public void c(String paramString, Object paramObject1, Object paramObject2)
  {
    a(5, paramString, paramObject1, paramObject2, null);
  }
  
  public void d(String paramString)
  {
    a(4, paramString, null, null, null);
  }
  
  public void d(String paramString, Object paramObject)
  {
    a(5, paramString, paramObject, null, null);
  }
  
  public void d(String paramString, Object paramObject1, Object paramObject2)
  {
    a(6, paramString, paramObject1, paramObject2, null);
  }
  
  public void e(String paramString)
  {
    a(5, paramString, null, null, null);
  }
  
  public void e(String paramString, Object paramObject)
  {
    a(6, paramString, paramObject, null, null);
  }
  
  public void f(String paramString)
  {
    a(6, paramString, null, null, null);
  }
  
  public t k()
  {
    return a;
  }
  
  protected void l()
  {
    if (q().a()) {
      throw new IllegalStateException("Call only supported on the client side");
    }
  }
  
  protected void m()
  {
    a.s();
  }
  
  protected jt n()
  {
    return a.d();
  }
  
  protected Context o()
  {
    return a.b();
  }
  
  protected g p()
  {
    return a.f();
  }
  
  protected ad q()
  {
    return a.e();
  }
  
  protected h r()
  {
    return a.h();
  }
  
  public c s()
  {
    return a.k();
  }
  
  protected p t()
  {
    return a.i();
  }
  
  protected ah u()
  {
    return a.j();
  }
  
  protected o v()
  {
    return a.l();
  }
  
  protected j w()
  {
    return a.m();
  }
  
  protected aa x()
  {
    return a.p();
  }
  
  protected a y()
  {
    return a.o();
  }
  
  protected y z()
  {
    return a.q();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */