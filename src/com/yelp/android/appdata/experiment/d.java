package com.yelp.android.appdata.experiment;

import java.util.Map;

public class d
  implements i
{
  public static d a = new d(h.a, h.b);
  public static final i b = new d(h.a, h.c);
  private final i c;
  private final i d;
  
  private d(i parami1, i parami2)
  {
    c = parami1;
    d = parami2;
  }
  
  public String a(String paramString)
  {
    String str2 = c.a(paramString);
    String str1 = str2;
    if (str2 == null) {
      str1 = d.a(paramString);
    }
    return str1;
  }
  
  public void a(String paramString1, String paramString2)
  {
    d.a(paramString1, paramString2);
  }
  
  public void a(Map<String, String> paramMap)
  {
    d.a(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.experiment.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */