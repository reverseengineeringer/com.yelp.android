package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Locale;

public class PlatformRSSTermMap
  extends _PlatformRSSTermMap
{
  public static final JsonParser.DualCreator<PlatformRSSTermMap> CREATOR = new PlatformRSSTermMap.1();
  
  public PlatformRSSTermMap() {}
  
  public PlatformRSSTermMap(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
  
  public String a(String paramString)
  {
    if (paramString.equals("delivery")) {
      return c();
    }
    return b();
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (PlatformRSSTermMap)paramObject;
    } while ((c().equalsIgnoreCase(((PlatformRSSTermMap)paramObject).c())) && (b().equalsIgnoreCase(((PlatformRSSTermMap)paramObject).b())));
    return false;
  }
  
  public int hashCode()
  {
    return c().toLowerCase(Locale.getDefault()).hashCode() * 31 + b().toLowerCase(Locale.getDefault()).hashCode();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.PlatformRSSTermMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */