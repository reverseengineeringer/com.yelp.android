package com.yelp.android.v;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;

public class e
{
  private final URL a;
  private String b;
  private URL c;
  
  public e(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("String url must not be empty or null: " + paramString);
    }
    b = paramString;
    a = null;
  }
  
  public e(URL paramURL)
  {
    if (paramURL == null) {
      throw new IllegalArgumentException("URL must not be null!");
    }
    a = paramURL;
    b = null;
  }
  
  private URL b()
  {
    if (c != null) {
      return c;
    }
    c = new URL(Uri.encode(toString(), "@#&=*+-_.,:!?()/~'%"));
    return c;
  }
  
  public URL a()
  {
    return b();
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    return toString().equals(paramObject.toString());
  }
  
  public int hashCode()
  {
    return toString().hashCode();
  }
  
  public String toString()
  {
    if (TextUtils.isEmpty(b)) {
      b = a.toString();
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.v.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */