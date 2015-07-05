package com.yelp.android.al;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class a
{
  public String a;
  public String b;
  public Boolean c;
  
  public a(String paramString1, String paramString2, Boolean paramBoolean)
  {
    a = paramString1;
    b = paramString2;
    c = paramBoolean;
  }
  
  private String a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int j = paramString.length();
    while (i < j)
    {
      char c1 = Character.toLowerCase(paramString.charAt(i));
      if (((c1 >= 'a') && (c1 <= 'z')) || ((c1 >= '0') && (c1 <= '9')) || (c1 == '_') || (c1 == '-') || (c1 == '.')) {
        localStringBuilder.append(c1);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public String a()
  {
    Object localObject = new StringBuilder();
    if ((a != null) && (b != null))
    {
      String str = a(a);
      if (str.length() > 0) {
        try
        {
          ((StringBuilder)localObject).append("&").append(str).append("=").append(URLEncoder.encode(b, "UTF-8").replace("+", "%20"));
          localObject = ((StringBuilder)localObject).toString();
          return (String)localObject;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
      }
    }
    return "";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.al.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */