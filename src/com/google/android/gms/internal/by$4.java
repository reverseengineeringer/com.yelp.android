package com.google.android.gms.internal;

import java.util.Map;

final class by$4
  implements bz
{
  public void a(ib paramib, Map<String, String> paramMap)
  {
    String str1 = (String)paramMap.get("tx");
    String str2 = (String)paramMap.get("ty");
    paramMap = (String)paramMap.get("td");
    try
    {
      int i = Integer.parseInt(str1);
      int j = Integer.parseInt(str2);
      int k = Integer.parseInt(paramMap);
      paramib = paramib.n();
      if (paramib != null) {
        paramib.a().a(i, j, k);
      }
      return;
    }
    catch (NumberFormatException paramib)
    {
      gz.d("Could not parse touch parameters from gmsg.");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.by.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */