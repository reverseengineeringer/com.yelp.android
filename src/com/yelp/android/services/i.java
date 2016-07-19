package com.yelp.android.services;

import android.content.Context;
import com.yelp.android.co.a.j;
import com.yelp.android.debug.Debug.ApiEndpoint;
import com.yelp.android.debug.d;

public class i
{
  static String a;
  static String b;
  static String c;
  static d d;
  static Debug.ApiEndpoint e;
  private static final String f = String.valueOf(new char[] { 61, 61, 119, 100, 88, 86, 122, 82, 75, 108, 110, 77, 122, 103, 110, 89, 84, 78, 88, 97, 114, 120, 50, 81, 118, 57, 50, 86, 53, 78, 84, 87 });
  private static final String g = String.valueOf(new char[] { 61, 61, 103, 78, 79, 120, 109, 87, 75, 70, 85, 73, 117, 86, 68, 81, 57, 85, 51, 79, 84, 90, 108, 77, 56, 115, 105, 76, 113, 86, 50, 81, 115, 90, 107, 84 });
  private static final String h = String.valueOf(new char[] { 61, 61, 119, 100, 107, 49, 121, 98, 88, 100, 86, 86, 81, 104, 72, 83, 68, 49, 109, 101, 121, 69, 71, 84, 105, 74, 108, 77, 116, 70, 122, 85 });
  private static final String i = String.valueOf(new char[] { 61, 61, 119, 78, 106, 86, 83, 75, 109, 100, 50, 79, 112, 99, 106, 83, 84, 90, 87, 77, 107, 115, 88, 86, 74, 49, 121, 73, 70, 70, 50, 73, 115, 103, 71, 86 });
  private static final String j = String.valueOf(new char[] { 116, 57, 50, 89, 117, 119, 87, 97, 104, 49, 50, 90, 65, 82, 87, 97, 118, 74, 72, 90, 117, 70, 71, 99, 115, 86, 87, 101 });
  private static final String k = String.valueOf(new char[] { 116, 57, 50, 89, 117, 119, 87, 97, 104, 49, 50, 90, 65, 90, 88, 90, 107, 82, 87, 97, 118, 74, 72, 90, 117, 70, 71, 99, 115, 86, 87, 101 });
  private static final String l = String.valueOf(new char[] { 61, 61, 81, 77, 120, 85, 68, 77, 122, 69, 122, 78 });
  private static final String m = String.valueOf(new char[] { 61, 65, 68, 77, 53, 69, 50, 78, 104, 90, 50, 78, 107, 90, 122, 78, 106, 90, 50, 77, 106, 100, 84, 89, 120, 77, 68, 77, 48, 73, 50, 89, 49, 89, 84, 78, 49, 81, 122, 77, 121, 89, 71, 90 });
  private static final String n = String.valueOf(new char[] { 61, 73, 106, 78, 120, 103, 122, 77, 120, 69, 106, 78, 120, 69, 84, 77, 121, 77, 84, 78, 120, 65, 84, 77 });
  private static final String o = String.valueOf(new char[] { 61, 73, 106, 78, 120, 77, 84, 77, 53, 89, 106, 77, 48, 77, 106, 77, 120, 77, 84, 78, 120, 65, 84, 77 });
  private static final String p = String.valueOf(new char[] { 61, 73, 106, 78, 120, 77, 84, 79, 49, 69, 68, 77, 53, 65, 106, 77, 120, 77, 84, 78, 120, 65, 84, 77 });
  private static final String q = String.valueOf(new char[] { 61, 69, 106, 78, 120, 77, 84, 78, 51, 81, 122, 77, 49, 99, 84, 79 });
  private static final String r = String.valueOf(new char[] { 61, 77, 50, 89, 121, 107, 122, 89, 105, 104, 84, 77, 51, 73, 109, 90, 50, 69, 87, 78, 109, 70, 109, 77, 119, 89, 84, 79, 50, 81, 68, 90, 51, 73, 50, 77, 53, 85, 122, 89, 121, 89, 50, 77 });
  private static final String s = String.valueOf(new char[] { 61, 111, 88, 97, 105, 53, 67, 90, 112, 57, 109, 99, 107, 53, 87, 89, 117, 65, 72, 98, 108, 108, 110, 76, 116, 57, 50, 89 });
  private static final String t = String.valueOf(new char[] { 61, 61, 65, 90, 49, 99, 84, 89, 50, 89, 122, 89, 106, 74, 122, 89, 108, 66, 84, 79, 50, 103, 106, 90, 51, 69, 87, 89, 104, 78, 106, 89, 108, 86, 87, 90, 52, 103, 84, 78, 106, 90, 87, 77, 108, 90, 84, 77, 53, 69, 122, 89, 120, 99, 68, 78, 51, 85, 122, 77, 121, 65, 106, 90, 119, 107, 84, 78, 106, 78, 109, 78, 52, 89, 84, 89, 120, 73, 109, 78, 49, 103, 84, 78, 48, 85, 84, 90 });
  private static final String u = String.valueOf(new char[] { 61, 61, 65, 90, 112, 57, 109, 99, 107, 53, 87, 89, 117, 65, 72, 98, 108, 108, 110, 76, 116, 57, 50, 89 });
  
  static
  {
    a(new d("yelp.com"), Debug.ApiEndpoint.AUTO_API);
  }
  
  public static String a()
  {
    if (d.c()) {
      return b("=IGM4ADNxQGN4ATN2IGN2MjZiVmY1czMiJGN1MDMjhjZ");
    }
    if (d.d()) {
      return b("=kzN1QmZmZ2MhdzNlVmMkZzNkFDZzIDM1E2NlRjN1QTN");
    }
    return b("=Q2N1cTN2EWZ0QWZjhzMhN2NkR2NmhzMjNWZkZ2Y3QWN");
  }
  
  public static String a(Context paramContext)
  {
    if (d.c()) {
      return paramContext.getString(a.j.mobile_host);
    }
    return d.b();
  }
  
  public static String a(String paramString)
  {
    return d.a(paramString);
  }
  
  public static void a(d paramd, Debug.ApiEndpoint paramApiEndpoint)
  {
    d = paramd;
    e = paramApiEndpoint;
    if (d == null) {
      d = new d("yelp.com");
    }
    if (e == null) {
      e = Debug.ApiEndpoint.AUTO_API;
    }
    a = eendpoint + "." + d.a();
    if (d.c())
    {
      b = b(f);
      c = b(g);
      return;
    }
    b = b(h);
    c = b(i);
  }
  
  public static String b()
  {
    if (d.c()) {
      return b(q);
    }
    if (d.d()) {
      return b(o);
    }
    if (d.e()) {
      return b(p);
    }
    return b(n);
  }
  
  protected static String b(String paramString)
  {
    return a.a(new StringBuffer(paramString).reverse().toString());
  }
  
  public static d c()
  {
    return d;
  }
  
  public static String d()
  {
    return b(l);
  }
  
  public static String e()
  {
    return "https://sb.scorecardresearch.com/p2?c2=" + d();
  }
  
  public static String f()
  {
    return b(m);
  }
  
  public static String g()
  {
    return a;
  }
  
  public static String h()
  {
    return b;
  }
  
  public static String i()
  {
    return c;
  }
  
  public static String j()
  {
    return b(r);
  }
  
  public static String k()
  {
    return b(s);
  }
  
  public static String l()
  {
    return b(u);
  }
  
  public static String m()
  {
    return b(t);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */