package com.kahuna.sdk.location;

import org.json.JSONException;
import org.json.JSONObject;

public class g
{
  private String a;
  private String b;
  private int c;
  private int d;
  private int e;
  private int f;
  private String g;
  private String h;
  private int i;
  private long j;
  
  protected g(String paramString1, String paramString2, int paramInt1, int paramInt2, long paramLong)
  {
    a = paramString1;
    b = paramString2;
    if (b != null) {
      b.replace("-", "").trim();
    }
    c = paramInt1;
    d = paramInt2;
    if (j < 1L)
    {
      j = (System.currentTimeMillis() / 1000L + 86400L);
      return;
    }
    j = paramLong;
  }
  
  protected static String a(byte[] paramArrayOfByte)
  {
    String str = "";
    int k = 0;
    while (k < paramArrayOfByte.length)
    {
      str = str + String.format("%2X", new Object[] { Byte.valueOf(paramArrayOfByte[k]) });
      k += 1;
    }
    return str;
  }
  
  public String a()
  {
    return a;
  }
  
  protected void a(int paramInt)
  {
    e = paramInt;
  }
  
  protected void a(String paramString)
  {
    a = paramString;
  }
  
  public String b()
  {
    return b;
  }
  
  protected void b(int paramInt)
  {
    f = paramInt;
  }
  
  protected void b(String paramString)
  {
    h = paramString;
  }
  
  public int c()
  {
    return c;
  }
  
  protected void c(int paramInt)
  {
    i = paramInt;
  }
  
  protected void c(String paramString)
  {
    g = paramString;
  }
  
  public int d()
  {
    return d;
  }
  
  protected int e()
  {
    return e;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      do
      {
        return false;
      } while (getClass() != paramObject.getClass());
      paramObject = (g)paramObject;
    } while ((b == null) || (!b.equalsIgnoreCase(((g)paramObject).b())));
    if ((c < 0) || (((g)paramObject).c() < 0)) {}
    for (int k = 1;; k = 0)
    {
      if ((d < 0) || (((g)paramObject).d() < 0)) {}
      for (int m = 1;; m = 0)
      {
        if ((k != 0) && (m != 0)) {
          return true;
        }
        if ((c != ((g)paramObject).c()) || (d != ((g)paramObject).d())) {
          break;
        }
        return true;
      }
    }
  }
  
  protected int f()
  {
    return f;
  }
  
  protected JSONObject g()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("id", a);
      localJSONObject.put("uuid", b);
      localJSONObject.put("major", c);
      localJSONObject.put("minor", d);
      localJSONObject.put("expiry", j);
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject;
  }
  
  public String toString()
  {
    return "UUID:" + b() + " M:" + c() + " m:" + d() + " p:" + f();
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */