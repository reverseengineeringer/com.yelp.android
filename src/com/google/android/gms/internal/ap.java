package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build.VERSION;
import com.google.android.gms.ads.internal.s;
import java.util.LinkedHashMap;
import java.util.Map;

@fv
public class ap
{
  private boolean a;
  private String b;
  private Map<String, String> c;
  private Context d = null;
  private String e = null;
  
  public ap(Context paramContext, String paramString)
  {
    d = paramContext;
    e = paramString;
    a = ((Boolean)ao.G.c()).booleanValue();
    b = ((String)ao.H.c());
    c = new LinkedHashMap();
    c.put("s", "gmob_sdk");
    c.put("v", "3");
    c.put("os", Build.VERSION.RELEASE);
    c.put("sdk", Build.VERSION.SDK);
    c.put("device", s.e().d());
    paramString = c;
    if (paramContext.getApplicationContext() != null) {}
    for (paramContext = paramContext.getApplicationContext().getPackageName();; paramContext = paramContext.getPackageName())
    {
      paramString.put("app", paramContext);
      paramContext = s.k().a(d);
      c.put("network_coarse", Integer.toString(m));
      c.put("network_fine", Integer.toString(n));
      return;
    }
  }
  
  boolean a()
  {
    return a;
  }
  
  String b()
  {
    return b;
  }
  
  Context c()
  {
    return d;
  }
  
  String d()
  {
    return e;
  }
  
  Map<String, String> e()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */