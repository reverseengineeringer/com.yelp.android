package com.google.android.gms.internal;

import java.util.Map;

class af$6
  implements cd
{
  af$6(af paramaf) {}
  
  public void a(gu paramgu, Map<String, String> paramMap)
  {
    if (!nd.a(paramMap)) {
      return;
    }
    gr.S("Received request to untrack: " + af.b(nd).aH());
    nd.destroy();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.af.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */