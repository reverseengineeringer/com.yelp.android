package com.google.android.gms.analytics;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class af
{
  private final Map<String, Integer> BO = new HashMap();
  private final Map<String, String> BP = new HashMap();
  private final boolean BQ;
  private final String BR;
  
  public af(String paramString, boolean paramBoolean)
  {
    BQ = paramBoolean;
    BR = paramString;
  }
  
  public void e(String paramString, int paramInt)
  {
    if (!BQ) {
      return;
    }
    Integer localInteger2 = (Integer)BO.get(paramString);
    Integer localInteger1 = localInteger2;
    if (localInteger2 == null) {
      localInteger1 = Integer.valueOf(0);
    }
    BO.put(paramString, Integer.valueOf(localInteger1.intValue() + paramInt));
  }
  
  public String fg()
  {
    if (!BQ) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(BR);
    Iterator localIterator = BO.keySet().iterator();
    String str;
    while (localIterator.hasNext())
    {
      str = (String)localIterator.next();
      localStringBuilder.append("&").append(str).append("=").append(BO.get(str));
    }
    localIterator = BP.keySet().iterator();
    while (localIterator.hasNext())
    {
      str = (String)localIterator.next();
      localStringBuilder.append("&").append(str).append("=").append((String)BP.get(str));
    }
    return localStringBuilder.toString();
  }
  
  public void g(String paramString1, String paramString2)
  {
    if ((!BQ) || (TextUtils.isEmpty(paramString1))) {
      return;
    }
    BP.put(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */