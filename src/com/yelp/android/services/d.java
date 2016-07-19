package com.yelp.android.services;

import android.net.Uri;
import android.text.TextUtils;
import java.util.LinkedHashMap;

public abstract class d
{
  protected final Uri a;
  protected final LinkedHashMap<String, String> b;
  protected String c;
  
  public d(String paramString1, String paramString2)
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
  
  public d a(String paramString1, String paramString2)
  {
    b.put(paramString1, paramString2);
    return this;
  }
  
  public abstract String a();
  
  public abstract String b();
}

/* Location:
 * Qualified Name:     com.yelp.android.services.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */