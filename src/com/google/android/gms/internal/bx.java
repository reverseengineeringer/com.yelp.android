package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.s;
import java.util.Map;

@fv
public final class bx
  implements bz
{
  private long a(long paramLong)
  {
    return paramLong - s.i().a() + s.i().b();
  }
  
  private void b(ib paramib, Map<String, String> paramMap)
  {
    String str2 = (String)paramMap.get("label");
    String str1 = (String)paramMap.get("start_label");
    paramMap = (String)paramMap.get("timestamp");
    if (TextUtils.isEmpty(str2))
    {
      gz.d("No label given for CSI tick.");
      return;
    }
    if (TextUtils.isEmpty(paramMap))
    {
      gz.d("No timestamp given for CSI tick.");
      return;
    }
    try
    {
      long l = a(Long.parseLong(paramMap));
      paramMap = str1;
      if (TextUtils.isEmpty(str1)) {
        paramMap = "native:view_load";
      }
      paramib.x().a(str2, paramMap, l);
      return;
    }
    catch (NumberFormatException paramib)
    {
      gz.d("Malformed timestamp for CSI tick.", paramib);
    }
  }
  
  private void c(ib paramib, Map<String, String> paramMap)
  {
    paramMap = (String)paramMap.get("value");
    if (TextUtils.isEmpty(paramMap))
    {
      gz.d("No value given for CSI experiment.");
      return;
    }
    paramib = paramib.x().a();
    if (paramib == null)
    {
      gz.d("No ticker for WebView, dropping experiment ID.");
      return;
    }
    paramib.a("e", paramMap);
  }
  
  private void d(ib paramib, Map<String, String> paramMap)
  {
    String str = (String)paramMap.get("name");
    paramMap = (String)paramMap.get("value");
    if (TextUtils.isEmpty(paramMap))
    {
      gz.d("No value given for CSI extra.");
      return;
    }
    if (TextUtils.isEmpty(str))
    {
      gz.d("No name given for CSI extra.");
      return;
    }
    paramib = paramib.x().a();
    if (paramib == null)
    {
      gz.d("No ticker for WebView, dropping extra parameter.");
      return;
    }
    paramib.a(str, paramMap);
  }
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    String str = (String)paramMap.get("action");
    if ("tick".equals(str)) {
      b(paramib, paramMap);
    }
    do
    {
      return;
      if ("experiment".equals(str))
      {
        c(paramib, paramMap);
        return;
      }
    } while (!"extra".equals(str));
    d(paramib, paramMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */