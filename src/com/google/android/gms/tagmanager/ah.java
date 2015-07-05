package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class ah
  extends aj
{
  private static final String ID = a.K.toString();
  private final ct aqo;
  
  public ah(ct paramct)
  {
    super(ID, new String[0]);
    aqo = paramct;
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    paramMap = aqo.qE();
    if (paramMap == null) {
      return di.rb();
    }
    return di.u(paramMap);
  }
  
  public boolean pe()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */