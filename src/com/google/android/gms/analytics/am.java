package com.google.android.gms.analytics;

import android.app.Activity;
import java.util.HashMap;
import java.util.Map;

class am
  implements m
{
  int CA = -1;
  Map<String, String> CB = new HashMap();
  String Cv;
  double Cw = -1.0D;
  int Cx = -1;
  int Cy = -1;
  int Cz = -1;
  
  public String am(String paramString)
  {
    String str = (String)CB.get(paramString);
    if (str != null) {
      return str;
    }
    return paramString;
  }
  
  public boolean fA()
  {
    return Cz != -1;
  }
  
  public boolean fB()
  {
    return Cz == 1;
  }
  
  public boolean fC()
  {
    return CA == 1;
  }
  
  public boolean ft()
  {
    return Cv != null;
  }
  
  public String fu()
  {
    return Cv;
  }
  
  public boolean fv()
  {
    return Cw >= 0.0D;
  }
  
  public double fw()
  {
    return Cw;
  }
  
  public boolean fx()
  {
    return Cx >= 0;
  }
  
  public boolean fy()
  {
    return Cy != -1;
  }
  
  public boolean fz()
  {
    return Cy == 1;
  }
  
  public int getSessionTimeout()
  {
    return Cx;
  }
  
  public String k(Activity paramActivity)
  {
    return am(paramActivity.getClass().getCanonicalName());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */