package com.google.android.gms.internal;

import java.util.Map;

class fs$2
  implements cd
{
  fs$2(fs paramfs) {}
  
  public void a(gu paramgu, Map<String, String> paramMap)
  {
    fu localfu;
    String str;
    synchronized (fs.a(uI))
    {
      if (fs.b(uI).isDone()) {
        return;
      }
      localfu = new fu(-2, paramMap);
      str = localfu.getUrl();
      if (str == null)
      {
        gr.W("URL missing in loadAdUrl GMSG.");
        return;
      }
    }
    if (str.contains("%40mediation_adapters%40"))
    {
      paramgu = str.replaceAll("%40mediation_adapters%40", ge.a(paramgu.getContext(), (String)paramMap.get("check_adapters"), fs.c(uI)));
      localfu.setUrl(paramgu);
      gr.V("Ad request URL modified to " + paramgu);
    }
    fs.b(uI).a(localfu);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fs.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */