package com.google.android.gms.internal;

import java.util.Map;

final class cc$5
  implements cd
{
  public void a(gu paramgu, Map<String, String> paramMap)
  {
    paramgu = paramgu.dC();
    if (paramgu == null)
    {
      gr.W("A GMSG tried to close something that wasn't an overlay.");
      return;
    }
    paramgu.close();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cc.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */