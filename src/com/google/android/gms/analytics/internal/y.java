package com.google.android.gms.analytics.internal;

import com.google.android.gms.internal.kp;
import com.google.android.gms.measurement.h;

public class y
  extends r
{
  private final kp a = new kp();
  
  y(t paramt)
  {
    super(paramt);
  }
  
  protected void a()
  {
    r().a().a(a);
    b();
  }
  
  public void b()
  {
    Object localObject = v();
    String str = ((o)localObject).c();
    if (str != null) {
      a.a(str);
    }
    localObject = ((o)localObject).b();
    if (localObject != null) {
      a.b((String)localObject);
    }
  }
  
  public kp c()
  {
    D();
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */