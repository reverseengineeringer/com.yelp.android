package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

public class hh$b
{
  private final List<String> a = new ArrayList();
  private final List<Double> b = new ArrayList();
  private final List<Double> c = new ArrayList();
  
  public b a(String paramString, double paramDouble1, double paramDouble2)
  {
    int i = 0;
    for (;;)
    {
      double d1;
      double d2;
      if (i < a.size())
      {
        d1 = ((Double)c.get(i)).doubleValue();
        d2 = ((Double)b.get(i)).doubleValue();
        if (paramDouble1 >= d1) {
          break label107;
        }
      }
      label107:
      while ((d1 == paramDouble1) && (paramDouble2 < d2))
      {
        a.add(i, paramString);
        c.add(i, Double.valueOf(paramDouble1));
        b.add(i, Double.valueOf(paramDouble2));
        return this;
      }
      i += 1;
    }
  }
  
  public hh a()
  {
    return new hh(this, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hh.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */