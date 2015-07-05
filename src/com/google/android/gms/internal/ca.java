package com.google.android.gms.internal;

import java.util.Map;

@ey
public final class ca
  implements cd
{
  private final cb pP;
  
  public ca(cb paramcb)
  {
    pP = paramcb;
  }
  
  public void a(gu paramgu, Map<String, String> paramMap)
  {
    paramgu = (String)paramMap.get("name");
    if (paramgu == null)
    {
      gr.W("App event with no name parameter.");
      return;
    }
    pP.onAppEvent(paramgu, (String)paramMap.get("info"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */