package com.google.android.gms.internal;

import android.net.Uri;
import java.util.Map;

final class cc$4
  implements cd
{
  public void a(gu paramgu, Map<String, String> paramMap)
  {
    str = (String)paramMap.get("u");
    if (str == null)
    {
      gr.W("URL missing from click GMSG.");
      return;
    }
    paramMap = Uri.parse(str);
    try
    {
      Object localObject = paramgu.dF();
      if ((localObject == null) || (!((k)localObject).b(paramMap))) {
        break label111;
      }
      localObject = ((k)localObject).a(paramMap, paramgu.getContext());
      paramMap = (Map<String, String>)localObject;
    }
    catch (l locall)
    {
      for (;;)
      {
        gr.W("Unable to append parameter to URL: " + str);
      }
    }
    paramMap = paramMap.toString();
    new gp(paramgu.getContext(), dGwS, paramMap).start();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cc.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */