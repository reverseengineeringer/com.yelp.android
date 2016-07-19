package com.kahuna.sdk.inapp;

import java.util.Map;

class d$a
{
  private String a;
  private String b;
  private int c;
  private int d;
  private e e;
  private e f;
  private int g;
  private Map<String, b> h;
  private Map<String, a> i;
  private Map<String, String> j;
  
  d$a(String paramString1, String paramString2, int paramInt, e parame1, e parame2, Map<String, a> paramMap)
  {
    a = paramString1;
    b = paramString2;
    c = paramInt;
    e = parame1;
    f = parame2;
    i = paramMap;
  }
  
  a a(int paramInt)
  {
    d = paramInt;
    return this;
  }
  
  a a(Map<String, b> paramMap)
  {
    h = paramMap;
    return this;
  }
  
  d a()
  {
    return new d(a, b, c, d, e, f, i, g, h, j);
  }
  
  a b(int paramInt)
  {
    g = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.inapp.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */