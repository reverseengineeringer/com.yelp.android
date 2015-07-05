package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class e
  extends aj
{
  private static final String ID = a.Y.toString();
  private static final String aqd = b.bW.toString();
  private static final String aqe = b.bZ.toString();
  private final Context lM;
  
  public e(Context paramContext)
  {
    super(ID, new String[] { aqe });
    lM = paramContext;
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    Object localObject = (d.a)paramMap.get(aqe);
    if (localObject == null) {
      return di.rb();
    }
    localObject = di.j((d.a)localObject);
    paramMap = (d.a)paramMap.get(aqd);
    if (paramMap != null) {}
    for (paramMap = di.j(paramMap);; paramMap = null)
    {
      paramMap = ay.f(lM, (String)localObject, paramMap);
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
 * Qualified Name:     com.google.android.gms.tagmanager.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */