package com.yelp.android.cw;

import java.util.Arrays;
import java.util.Map;
import jp.line.android.sdk.api.ApiType;

public final class c
{
  public final ApiType a;
  private String b;
  private String c;
  private int d;
  private int e;
  private String[] f;
  private String g;
  private String h;
  private int i;
  private String j;
  private Map<String, Object> k;
  private Map<String, Object> l;
  private String m;
  
  public c(ApiType paramApiType)
  {
    a = paramApiType;
  }
  
  public final String a()
  {
    return b;
  }
  
  public final void a(String paramString)
  {
    b = paramString;
  }
  
  public final String b()
  {
    return c;
  }
  
  public final void b(String paramString)
  {
    c = paramString;
  }
  
  public final int c()
  {
    return d;
  }
  
  public final void c(String paramString)
  {
    m = paramString;
  }
  
  public final int d()
  {
    return e;
  }
  
  public final String[] e()
  {
    return f;
  }
  
  public final String f()
  {
    return g;
  }
  
  public final String g()
  {
    return h;
  }
  
  public final int h()
  {
    return i;
  }
  
  public final String i()
  {
    return j;
  }
  
  public final Map<String, Object> j()
  {
    return k;
  }
  
  public final Map<String, Object> k()
  {
    return l;
  }
  
  public final String l()
  {
    return m;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ApiRequest[apiType=").append(a);
    if (c != null) {
      localStringBuilder.append(", otp=").append(c);
    }
    if (b != null) {
      localStringBuilder.append(", requestToken=").append(b);
    }
    if (d > 0) {
      localStringBuilder.append(", start=").append(d);
    }
    if (e > 0) {
      localStringBuilder.append(", display=").append(e);
    }
    if (f != null) {
      localStringBuilder.append(", mids=").append(Arrays.toString(f));
    }
    if (h != null) {
      localStringBuilder.append(", filePath=").append(h);
    }
    if (i > 0) {
      localStringBuilder.append(", toChannel=").append(i);
    }
    if (j != null) {
      localStringBuilder.append(", postEventType=").append(j);
    }
    if (k != null) {
      localStringBuilder.append(", content=").append(k);
    }
    if (l != null) {
      localStringBuilder.append(", push=").append(l);
    }
    if (m != null) {
      localStringBuilder.append(", logoutTarget=").append(m);
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cw.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */