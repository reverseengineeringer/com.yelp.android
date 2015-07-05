package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@ey
public final class ft
{
  private int mOrientation = -1;
  private String pD;
  private String uJ;
  private String uK;
  private List<String> uL;
  private String uM;
  private String uN;
  private List<String> uO;
  private long uP = -1L;
  private boolean uQ = false;
  private final long uR = -1L;
  private long uS = -1L;
  private boolean uT = false;
  private boolean uU = false;
  private boolean uV = false;
  private boolean uW = true;
  private List<String> uo;
  
  static String a(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      return (String)paramMap.get(0);
    }
    return null;
  }
  
  static long b(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = (String)paramMap.get(0);
      try
      {
        float f = Float.parseFloat(paramMap);
        return (f * 1000.0F);
      }
      catch (NumberFormatException localNumberFormatException)
      {
        gr.W("Could not parse float from " + paramString + " header: " + paramMap);
      }
    }
    return -1L;
  }
  
  static List<String> c(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = (String)paramMap.get(0);
      if (paramMap != null) {
        return Arrays.asList(paramMap.trim().split("\\s+"));
      }
    }
    return null;
  }
  
  private boolean d(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    return (paramMap != null) && (!paramMap.isEmpty()) && (Boolean.valueOf((String)paramMap.get(0)).booleanValue());
  }
  
  private void f(Map<String, List<String>> paramMap)
  {
    uJ = a(paramMap, "X-Afma-Ad-Size");
  }
  
  private void g(Map<String, List<String>> paramMap)
  {
    paramMap = c(paramMap, "X-Afma-Click-Tracking-Urls");
    if (paramMap != null) {
      uL = paramMap;
    }
  }
  
  private void h(Map<String, List<String>> paramMap)
  {
    paramMap = (List)paramMap.get("X-Afma-Debug-Dialog");
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      uM = ((String)paramMap.get(0));
    }
  }
  
  private void i(Map<String, List<String>> paramMap)
  {
    paramMap = c(paramMap, "X-Afma-Tracking-Urls");
    if (paramMap != null) {
      uO = paramMap;
    }
  }
  
  private void j(Map<String, List<String>> paramMap)
  {
    long l = b(paramMap, "X-Afma-Interstitial-Timeout");
    if (l != -1L) {
      uP = l;
    }
  }
  
  private void k(Map<String, List<String>> paramMap)
  {
    uN = a(paramMap, "X-Afma-ActiveView");
  }
  
  private void l(Map<String, List<String>> paramMap)
  {
    uU |= d(paramMap, "X-Afma-Native");
  }
  
  private void m(Map<String, List<String>> paramMap)
  {
    uT |= d(paramMap, "X-Afma-Custom-Rendering-Allowed");
  }
  
  private void n(Map<String, List<String>> paramMap)
  {
    uQ |= d(paramMap, "X-Afma-Mediation");
  }
  
  private void o(Map<String, List<String>> paramMap)
  {
    paramMap = c(paramMap, "X-Afma-Manual-Tracking-Urls");
    if (paramMap != null) {
      uo = paramMap;
    }
  }
  
  private void p(Map<String, List<String>> paramMap)
  {
    long l = b(paramMap, "X-Afma-Refresh-Rate");
    if (l != -1L) {
      uS = l;
    }
  }
  
  private void q(Map<String, List<String>> paramMap)
  {
    paramMap = (List)paramMap.get("X-Afma-Orientation");
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = (String)paramMap.get(0);
      if (!"portrait".equalsIgnoreCase(paramMap)) {
        break label53;
      }
      mOrientation = gi.dv();
    }
    label53:
    while (!"landscape".equalsIgnoreCase(paramMap)) {
      return;
    }
    mOrientation = gi.du();
  }
  
  private void r(Map<String, List<String>> paramMap)
  {
    paramMap = (List)paramMap.get("X-Afma-Use-HTTPS");
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      uV = Boolean.valueOf((String)paramMap.get(0)).booleanValue();
    }
  }
  
  private void s(Map<String, List<String>> paramMap)
  {
    paramMap = (List)paramMap.get("X-Afma-Content-Url-Opted-Out");
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      uW = Boolean.valueOf((String)paramMap.get(0)).booleanValue();
    }
  }
  
  public void a(String paramString1, Map<String, List<String>> paramMap, String paramString2)
  {
    uK = paramString1;
    pD = paramString2;
    e(paramMap);
  }
  
  public void e(Map<String, List<String>> paramMap)
  {
    f(paramMap);
    g(paramMap);
    h(paramMap);
    i(paramMap);
    j(paramMap);
    n(paramMap);
    o(paramMap);
    p(paramMap);
    q(paramMap);
    k(paramMap);
    r(paramMap);
    m(paramMap);
    l(paramMap);
    s(paramMap);
  }
  
  public fj i(long paramLong)
  {
    return new fj(uK, pD, uL, uO, uP, uQ, -1L, uo, uS, mOrientation, uJ, paramLong, uM, uN, uT, uU, uV, uW);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */