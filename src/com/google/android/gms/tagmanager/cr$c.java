package com.google.android.gms.tagmanager;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public class cr$c
{
  private final String TU;
  private final List<cr.e> asO;
  private final Map<String, List<cr.a>> asP;
  private final int asQ;
  
  private cr$c(List<cr.e> paramList, Map<String, List<cr.a>> paramMap, String paramString, int paramInt)
  {
    asO = Collections.unmodifiableList(paramList);
    asP = Collections.unmodifiableMap(paramMap);
    TU = paramString;
    asQ = paramInt;
  }
  
  public static cr.d qo()
  {
    return new cr.d(null);
  }
  
  public String getVersion()
  {
    return TU;
  }
  
  public List<cr.e> qp()
  {
    return asO;
  }
  
  public Map<String, List<cr.a>> qq()
  {
    return asP;
  }
  
  public String toString()
  {
    return "Rules: " + qp() + "  Macros: " + asP;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cr.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */