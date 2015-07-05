package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class ax
  extends aj
{
  private static final String ID = a.ad.toString();
  private static final String aqd = b.bW.toString();
  private final Context lM;
  
  public ax(Context paramContext)
  {
    super(ID, new String[0]);
    lM = paramContext;
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    if ((d.a)paramMap.get(aqd) != null) {}
    for (paramMap = di.j((d.a)paramMap.get(aqd));; paramMap = null)
    {
      paramMap = ay.e(lM, paramMap);
      if (paramMap == null) {
        break;
      }
      return di.u(paramMap);
    }
    return di.rb();
  }
  
  public boolean pe()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */