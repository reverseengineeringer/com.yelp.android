package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.Map;

@fv
public abstract class at
{
  @fv
  public static final at a = new at()
  {
    public String a(String paramAnonymousString1, String paramAnonymousString2)
    {
      return paramAnonymousString2;
    }
  };
  @fv
  public static final at b = new at()
  {
    public String a(String paramAnonymousString1, String paramAnonymousString2)
    {
      if (paramAnonymousString1 != null) {
        return paramAnonymousString1;
      }
      return paramAnonymousString2;
    }
  };
  @fv
  public static final at c = new at()
  {
    private String a(String paramAnonymousString)
    {
      if (TextUtils.isEmpty(paramAnonymousString)) {}
      int i;
      int j;
      do
      {
        return paramAnonymousString;
        i = 0;
        int k = paramAnonymousString.length();
        for (;;)
        {
          j = k;
          if (i >= paramAnonymousString.length()) {
            break;
          }
          j = k;
          if (paramAnonymousString.charAt(i) != ',') {
            break;
          }
          i += 1;
        }
        while ((j > 0) && (paramAnonymousString.charAt(j - 1) == ',')) {
          j -= 1;
        }
      } while ((i == 0) && (j == paramAnonymousString.length()));
      return paramAnonymousString.substring(i, j);
    }
    
    public String a(String paramAnonymousString1, String paramAnonymousString2)
    {
      paramAnonymousString1 = a(paramAnonymousString1);
      paramAnonymousString2 = a(paramAnonymousString2);
      if (TextUtils.isEmpty(paramAnonymousString1)) {
        return paramAnonymousString2;
      }
      if (TextUtils.isEmpty(paramAnonymousString2)) {
        return paramAnonymousString1;
      }
      return paramAnonymousString1 + "," + paramAnonymousString2;
    }
  };
  
  public abstract String a(String paramString1, String paramString2);
  
  public final void a(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    paramMap.put(paramString1, a((String)paramMap.get(paramString1), paramString2));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */