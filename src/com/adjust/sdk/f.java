package com.adjust.sdk;

import android.content.Context;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

public class f
{
  private static g a = null;
  private static h b = null;
  private static Logger c = null;
  private static HttpClient d = null;
  private static long e = -1L;
  private static long f = -1L;
  private static long g = -1L;
  
  public static Logger a()
  {
    if (c == null) {
      c = new i();
    }
    return c;
  }
  
  public static g a(a parama, Context paramContext, boolean paramBoolean)
  {
    if (a == null) {
      return new l(parama, paramContext, paramBoolean);
    }
    return a;
  }
  
  public static h a(g paramg)
  {
    if (b == null) {
      return new n(paramg);
    }
    return b;
  }
  
  public static HttpClient a(HttpParams paramHttpParams)
  {
    if (d == null) {
      return new DefaultHttpClient(paramHttpParams);
    }
    return d;
  }
  
  public static long b()
  {
    if (e == -1L) {
      return 60000L;
    }
    return e;
  }
  
  public static long c()
  {
    if (f == -1L) {
      return 1800000L;
    }
    return f;
  }
  
  public static long d()
  {
    if (g == -1L) {
      return 1000L;
    }
    return g;
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */