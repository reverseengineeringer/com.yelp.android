package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class b
  extends aj
{
  private static final String ID = com.google.android.gms.internal.a.u.toString();
  private final a aqc;
  
  public b(Context paramContext)
  {
    this(a.W(paramContext));
  }
  
  b(a parama)
  {
    super(ID, new String[0]);
    aqc = parama;
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    paramMap = aqc.pa();
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
 * Qualified Name:     com.google.android.gms.tagmanager.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */