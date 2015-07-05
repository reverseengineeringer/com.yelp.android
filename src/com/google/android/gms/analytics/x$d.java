package com.google.android.gms.analytics;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

class x$d
  implements Runnable
{
  private final Map<String, String> zR;
  
  x$d(Map<String, String> paramMap)
  {
    zR = new HashMap((Map)localObject);
    Object localObject = (String)((Map)localObject).get("&ht");
    paramMap = (Map<String, String>)localObject;
    if (localObject != null) {}
    try
    {
      Long.valueOf((String)localObject);
      paramMap = (Map<String, String>)localObject;
    }
    catch (NumberFormatException paramMap)
    {
      for (;;)
      {
        long l;
        paramMap = null;
      }
    }
    if (paramMap == null)
    {
      l = System.currentTimeMillis();
      zR.put("&ht", Long.toString(l));
    }
  }
  
  private String v(Map<String, String> paramMap)
  {
    if (paramMap.containsKey("useSecure"))
    {
      if (an.f((String)paramMap.get("useSecure"), true)) {
        return "https:";
      }
      return "http:";
    }
    return "https:";
  }
  
  private void w(Map<String, String> paramMap)
  {
    q localq = a.w(x.a(zQ));
    an.a(paramMap, "&adid", localq);
    an.a(paramMap, "&ate", localq);
  }
  
  private void x(Map<String, String> paramMap)
  {
    g localg = g.dZ();
    an.a(paramMap, "&an", localg);
    an.a(paramMap, "&av", localg);
    an.a(paramMap, "&aid", localg);
    an.a(paramMap, "&aiid", localg);
    paramMap.put("&v", "1");
  }
  
  private boolean y(Map<String, String> paramMap)
  {
    if (paramMap.get("&sf") == null) {
      return false;
    }
    double d = an.a((String)paramMap.get("&sf"), 100.0D);
    if (d >= 100.0D) {
      return false;
    }
    if (x.ah((String)paramMap.get("&cid")) % 10000 >= d * 100.0D)
    {
      if (paramMap.get("&t") == null) {}
      for (paramMap = "unknown";; paramMap = (String)paramMap.get("&t"))
      {
        ae.V(String.format("%s hit sampled out", new Object[] { paramMap }));
        return true;
      }
    }
    return false;
  }
  
  public void run()
  {
    w(zR);
    if (TextUtils.isEmpty((CharSequence)zR.get("&cid"))) {
      zR.put("&cid", k.el().getValue("&cid"));
    }
    if ((GoogleAnalytics.getInstance(x.a(zQ)).getAppOptOut()) || (y(zR))) {
      return;
    }
    if (!TextUtils.isEmpty(x.b(zQ)))
    {
      y.eK().D(true);
      zR.putAll(new HitBuilders.HitBuilder().setCampaignParamsFromUrl(x.b(zQ)).build());
      y.eK().D(false);
      x.a(zQ, null);
    }
    x(zR);
    Map localMap = ac.z(zR);
    x.d(zQ).b(localMap, Long.valueOf((String)zR.get("&ht")).longValue(), v(zR), x.c(zQ));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.x.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */