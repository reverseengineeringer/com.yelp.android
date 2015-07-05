package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class cf
  extends aj
{
  private static final String ID = a.Q.toString();
  private static final String asu = b.dz.toString();
  private static final String asv = b.dy.toString();
  
  public cf()
  {
    super(ID, new String[0]);
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    Object localObject = (d.a)paramMap.get(asu);
    paramMap = (d.a)paramMap.get(asv);
    double d2;
    double d1;
    if ((localObject != null) && (localObject != di.rb()) && (paramMap != null) && (paramMap != di.rb()))
    {
      localObject = di.k((d.a)localObject);
      paramMap = di.k(paramMap);
      if ((localObject != di.qZ()) && (paramMap != di.qZ()))
      {
        d2 = ((dh)localObject).doubleValue();
        d1 = paramMap.doubleValue();
        if (d2 > d1) {}
      }
    }
    for (;;)
    {
      return di.u(Long.valueOf(Math.round((d1 - d2) * Math.random() + d2)));
      d1 = 2.147483647E9D;
      d2 = 0.0D;
    }
  }
  
  public boolean pe()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */