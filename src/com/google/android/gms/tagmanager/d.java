package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import java.util.Map;

class d
  implements DataLayer.b
{
  private final Context lM;
  
  public d(Context paramContext)
  {
    lM = paramContext;
  }
  
  public void C(Map<String, Object> paramMap)
  {
    Object localObject = paramMap.get("gtm.url");
    if (localObject == null)
    {
      paramMap = paramMap.get("gtm");
      if ((paramMap == null) || (!(paramMap instanceof Map))) {}
    }
    for (paramMap = ((Map)paramMap).get("url");; paramMap = (Map<String, Object>)localObject)
    {
      if ((paramMap == null) || (!(paramMap instanceof String))) {}
      do
      {
        return;
        paramMap = Uri.parse((String)paramMap).getQueryParameter("referrer");
      } while (paramMap == null);
      ay.f(lM, paramMap);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */