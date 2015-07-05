package com.google.android.gms.internal;

import java.util.Map;

final class cc$7
  implements cd
{
  public void a(gu paramgu, Map<String, String> paramMap)
  {
    paramMap = (String)paramMap.get("u");
    if (paramMap == null)
    {
      gr.W("URL missing from httpTrack GMSG.");
      return;
    }
    new gp(paramgu.getContext(), dGwS, paramMap).start();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cc.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */