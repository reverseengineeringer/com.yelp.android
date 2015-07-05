package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@ey
class fu
{
  private int tq;
  private final List<String> uX;
  private final List<String> uY;
  private final String uZ;
  private final String va;
  private final String vb;
  private final String vc;
  private final boolean vd;
  private final int ve;
  private String vf;
  
  public fu(int paramInt, Map<String, String> paramMap)
  {
    vf = ((String)paramMap.get("url"));
    va = ((String)paramMap.get("base_uri"));
    vb = ((String)paramMap.get("post_parameters"));
    vd = parseBoolean((String)paramMap.get("drt_include"));
    uZ = ((String)paramMap.get("activation_overlay_url"));
    uY = J((String)paramMap.get("check_packages"));
    ve = parseInt((String)paramMap.get("request_id"));
    vc = ((String)paramMap.get("type"));
    uX = J((String)paramMap.get("errors"));
    tq = paramInt;
  }
  
  private List<String> J(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return Arrays.asList(paramString.split(","));
  }
  
  private static boolean parseBoolean(String paramString)
  {
    return (paramString != null) && ((paramString.equals("1")) || (paramString.equals("true")));
  }
  
  private int parseInt(String paramString)
  {
    if (paramString == null) {
      return 0;
    }
    return Integer.parseInt(paramString);
  }
  
  public List<String> cT()
  {
    return uX;
  }
  
  public String cU()
  {
    return vb;
  }
  
  public boolean cV()
  {
    return vd;
  }
  
  public int getErrorCode()
  {
    return tq;
  }
  
  public String getType()
  {
    return vc;
  }
  
  public String getUrl()
  {
    return vf;
  }
  
  public void setUrl(String paramString)
  {
    vf = paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */