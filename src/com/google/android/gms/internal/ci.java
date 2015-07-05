package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

@ey
public final class ci
  implements cd
{
  private final ce qc;
  private final v qd;
  
  public ci(ce paramce, v paramv)
  {
    qc = paramce;
    qd = paramv;
  }
  
  private static boolean b(Map<String, String> paramMap)
  {
    return "1".equals(paramMap.get("custom_close"));
  }
  
  private static int c(Map<String, String> paramMap)
  {
    paramMap = (String)paramMap.get("o");
    if (paramMap != null)
    {
      if ("p".equalsIgnoreCase(paramMap)) {
        return gi.dv();
      }
      if ("l".equalsIgnoreCase(paramMap)) {
        return gi.du();
      }
    }
    return -1;
  }
  
  public void a(gu paramgu, Map<String, String> paramMap)
  {
    String str = (String)paramMap.get("a");
    if (str == null) {
      gr.W("Action missing from an open GMSG.");
    }
    gv localgv;
    do
    {
      return;
      if ((qd != null) && (!qd.az()))
      {
        qd.d((String)paramMap.get("u"));
        return;
      }
      localgv = paramgu.dD();
      if ("expand".equalsIgnoreCase(str))
      {
        if (paramgu.dH())
        {
          gr.W("Cannot expand WebView that is already expanded.");
          return;
        }
        localgv.a(b(paramMap), c(paramMap));
        return;
      }
      if ("webapp".equalsIgnoreCase(str))
      {
        paramgu = (String)paramMap.get("u");
        if (paramgu != null)
        {
          localgv.a(b(paramMap), c(paramMap), paramgu);
          return;
        }
        localgv.a(b(paramMap), c(paramMap), (String)paramMap.get("html"), (String)paramMap.get("baseurl"));
        return;
      }
      if (!"in_app_purchase".equalsIgnoreCase(str)) {
        break;
      }
      paramgu = (String)paramMap.get("product_id");
      paramMap = (String)paramMap.get("report_urls");
    } while (qc == null);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = paramMap.split(" ");
      qc.a(paramgu, new ArrayList(Arrays.asList(paramMap)));
      return;
    }
    qc.a(paramgu, new ArrayList());
    return;
    localgv.a(new do((String)paramMap.get("i"), (String)paramMap.get("u"), (String)paramMap.get("m"), (String)paramMap.get("p"), (String)paramMap.get("c"), (String)paramMap.get("f"), (String)paramMap.get("e")));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */