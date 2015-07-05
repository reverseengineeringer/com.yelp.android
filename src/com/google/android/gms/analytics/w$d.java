package com.google.android.gms.analytics;

import com.google.android.gms.internal.ha;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class w$d
{
  private final Map<String, String> zF;
  private final long zG;
  private final String zH;
  private final List<ha> zI;
  
  public w$d(Map<String, String> paramMap, long paramLong, String paramString, List<ha> paramList)
  {
    zF = paramMap;
    zG = paramLong;
    zH = paramString;
    zI = paramList;
  }
  
  public Map<String, String> eH()
  {
    return zF;
  }
  
  public long eI()
  {
    return zG;
  }
  
  public List<ha> eJ()
  {
    return zI;
  }
  
  public String getPath()
  {
    return zH;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("PATH: ");
    localStringBuilder.append(zH);
    if (zF != null)
    {
      localStringBuilder.append("  PARAMS: ");
      Iterator localIterator = zF.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuilder.append((String)localEntry.getKey());
        localStringBuilder.append("=");
        localStringBuilder.append((String)localEntry.getValue());
        localStringBuilder.append(",  ");
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.w.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */