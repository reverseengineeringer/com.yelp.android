package android.support.v7.widget;

import android.view.View;
import java.util.List;

class ak
{
  boolean a = true;
  int b;
  int c;
  int d;
  int e;
  int f;
  int g;
  int h = 0;
  boolean i = false;
  int j;
  List<ce> k = null;
  
  private View b()
  {
    int n = k.size();
    int m = 0;
    if (m < n)
    {
      ce localce = (ce)k.get(m);
      if (localce.p()) {}
      while (d != localce.d())
      {
        m += 1;
        break;
      }
      a(localce);
      return a;
    }
    return null;
  }
  
  View a(bv parambv)
  {
    if (k != null) {
      return b();
    }
    parambv = parambv.c(d);
    d += e;
    return parambv;
  }
  
  public void a()
  {
    a(null);
  }
  
  public void a(ce paramce)
  {
    paramce = b(paramce);
    if (paramce == null) {}
    for (int m = -1;; m = paramce.d())
    {
      d = m;
      return;
    }
  }
  
  boolean a(cb paramcb)
  {
    return (d >= 0) && (d < paramcb.e());
  }
  
  public ce b(ce paramce)
  {
    int i2 = k.size();
    Object localObject = null;
    int m = Integer.MAX_VALUE;
    int n = 0;
    if (n < i2)
    {
      ce localce = (ce)k.get(n);
      if (localce != paramce) {
        if (!localce.p()) {}
      }
      for (;;)
      {
        n += 1;
        break;
        int i1 = (localce.d() - d) * e;
        if (i1 >= 0) {
          if (i1 < m)
          {
            if (i1 == 0) {
              return localce;
            }
            localObject = localce;
            m = i1;
          }
        }
      }
    }
    return (ce)localObject;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */