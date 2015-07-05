package com.google.android.gms.internal;

import java.util.Map;

final class cc$9
  implements cd
{
  public void a(gu paramgu, Map<String, String> paramMap)
  {
    String str1 = (String)paramMap.get("tx");
    String str2 = (String)paramMap.get("ty");
    paramMap = (String)paramMap.get("td");
    try
    {
      int i = Integer.parseInt(str1);
      int j = Integer.parseInt(str2);
      int k = Integer.parseInt(paramMap);
      paramgu = paramgu.dF();
      if (paramgu != null) {
        paramgu.C().a(i, j, k);
      }
      return;
    }
    catch (NumberFormatException paramgu)
    {
      gr.W("Could not parse touch parameters from gmsg.");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cc.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */