package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class p
  extends aj
{
  private static final String ID = a.D.toString();
  private final String TU;
  
  public p(String paramString)
  {
    super(ID, new String[0]);
    TU = paramString;
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    if (TU == null) {
      return di.rb();
    }
    return di.u(TU);
  }
  
  public boolean pe()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */