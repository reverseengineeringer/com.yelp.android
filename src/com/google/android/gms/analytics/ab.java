package com.google.android.gms.analytics;

import android.text.TextUtils;

public class ab
{
  private String Bu;
  private final long Bv;
  private final long Bw;
  private final String Bx;
  private String By;
  private String Bz = "https:";
  
  public ab(String paramString1, long paramLong1, long paramLong2, String paramString2)
  {
    Bu = paramString1;
    Bv = paramLong1;
    Bw = paramLong2;
    Bx = paramString2;
  }
  
  public void aj(String paramString)
  {
    Bu = paramString;
  }
  
  public void ak(String paramString)
  {
    if ((paramString == null) || (TextUtils.isEmpty(paramString.trim()))) {}
    do
    {
      return;
      By = paramString;
    } while (!paramString.toLowerCase().startsWith("http:"));
    Bz = "http:";
  }
  
  public String fa()
  {
    return Bu;
  }
  
  public long fb()
  {
    return Bv;
  }
  
  public long fc()
  {
    return Bw;
  }
  
  public String fd()
  {
    return Bz;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */