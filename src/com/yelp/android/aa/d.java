package com.yelp.android.aa;

import android.net.Uri;
import android.text.TextUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

public class d
{
  private final URL a;
  private final e b;
  private final String c;
  private String d;
  private URL e;
  
  public d(String paramString)
  {
    this(paramString, e.b);
  }
  
  public d(String paramString, e parame)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("String url must not be empty or null: " + paramString);
    }
    if (parame == null) {
      throw new IllegalArgumentException("Headers must not be null");
    }
    c = paramString;
    a = null;
    b = parame;
  }
  
  public d(URL paramURL)
  {
    this(paramURL, e.b);
  }
  
  public d(URL paramURL, e parame)
  {
    if (paramURL == null) {
      throw new IllegalArgumentException("URL must not be null!");
    }
    if (parame == null) {
      throw new IllegalArgumentException("Headers must not be null");
    }
    a = paramURL;
    c = null;
    b = parame;
  }
  
  private URL d()
    throws MalformedURLException
  {
    if (e == null) {
      e = new URL(e());
    }
    return e;
  }
  
  private String e()
  {
    if (TextUtils.isEmpty(d))
    {
      String str2 = c;
      String str1 = str2;
      if (TextUtils.isEmpty(str2)) {
        str1 = a.toString();
      }
      d = Uri.encode(str1, "@#&=*+-_.,:!?()/~'%");
    }
    return d;
  }
  
  public URL a()
    throws MalformedURLException
  {
    return d();
  }
  
  public Map<String, String> b()
  {
    return b.a();
  }
  
  public String c()
  {
    if (c != null) {
      return c;
    }
    return a.toString();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof d))
    {
      paramObject = (d)paramObject;
      bool1 = bool2;
      if (c().equals(((d)paramObject).c()))
      {
        bool1 = bool2;
        if (b.equals(b)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return c().hashCode() * 31 + b.hashCode();
  }
  
  public String toString()
  {
    return c() + '\n' + b.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aa.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */