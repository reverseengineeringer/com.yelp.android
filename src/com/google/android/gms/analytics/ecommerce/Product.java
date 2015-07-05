package com.google.android.gms.analytics.ecommerce;

import com.google.android.gms.analytics.s;
import com.google.android.gms.internal.jx;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class Product
{
  Map<String, String> CD = new HashMap();
  
  public Map<String, String> aq(String paramString)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = CD.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localHashMap.put(paramString + (String)localEntry.getKey(), localEntry.getValue());
    }
    return localHashMap;
  }
  
  void put(String paramString1, String paramString2)
  {
    jx.b(paramString1, "Name should be non-null");
    CD.put(paramString1, paramString2);
  }
  
  public Product setBrand(String paramString)
  {
    put("br", paramString);
    return this;
  }
  
  public Product setCategory(String paramString)
  {
    put("ca", paramString);
    return this;
  }
  
  public Product setCouponCode(String paramString)
  {
    put("cc", paramString);
    return this;
  }
  
  public Product setCustomDimension(int paramInt, String paramString)
  {
    put(s.E(paramInt), paramString);
    return this;
  }
  
  public Product setCustomMetric(int paramInt1, int paramInt2)
  {
    put(s.F(paramInt1), Integer.toString(paramInt2));
    return this;
  }
  
  public Product setId(String paramString)
  {
    put("id", paramString);
    return this;
  }
  
  public Product setName(String paramString)
  {
    put("nm", paramString);
    return this;
  }
  
  public Product setPosition(int paramInt)
  {
    put("ps", Integer.toString(paramInt));
    return this;
  }
  
  public Product setPrice(double paramDouble)
  {
    put("pr", Double.toString(paramDouble));
    return this;
  }
  
  public Product setQuantity(int paramInt)
  {
    put("qt", Integer.toString(paramInt));
    return this;
  }
  
  public Product setVariant(String paramString)
  {
    put("va", paramString);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.ecommerce.Product
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */