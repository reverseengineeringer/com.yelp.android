package com.yelp.android.services;

import android.net.Uri;
import android.text.TextUtils;
import com.yelp.android.util.f;
import java.util.LinkedHashMap;

public abstract class j
{
  protected final Uri a;
  protected final LinkedHashMap<String, String> b;
  protected String c;
  
  public j(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("QueryType cannot be empty");
    }
    if (TextUtils.isEmpty(paramString2)) {
      throw new IllegalArgumentException("Server cannot be empty");
    }
    c = paramString2;
    a = Uri.parse(paramString1);
    b = new LinkedHashMap();
  }
  
  public j a(String paramString, double paramDouble)
  {
    return a(paramString, f.a(Double.valueOf(paramDouble)));
  }
  
  public j a(String paramString, int paramInt)
  {
    return a(paramString, Integer.toString(paramInt));
  }
  
  public j a(String paramString, long paramLong)
  {
    return a(paramString, String.valueOf(paramLong));
  }
  
  public j a(String paramString1, String paramString2)
  {
    b.put(paramString1, paramString2);
    return this;
  }
  
  public j a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "1";; str = "0") {
      return a(paramString, str);
    }
  }
  
  public abstract String a();
  
  public abstract String b();
}

/* Location:
 * Qualified Name:     com.yelp.android.services.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */