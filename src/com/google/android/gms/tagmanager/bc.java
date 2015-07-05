package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d.a;
import java.util.Locale;
import java.util.Map;

class bc
  extends aj
{
  private static final String ID = a.N.toString();
  
  public bc()
  {
    super(ID, new String[0]);
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    paramMap = Locale.getDefault();
    if (paramMap == null) {
      return di.rb();
    }
    paramMap = paramMap.getLanguage();
    if (paramMap == null) {
      return di.rb();
    }
    return di.u(paramMap.toLowerCase());
  }
  
  public boolean pe()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */