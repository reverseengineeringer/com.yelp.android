package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import org.json.JSONObject;

@fv
public final class q
{
  private final String a;
  private final JSONObject b;
  private final String c;
  private final String d;
  private final boolean e;
  private final boolean f;
  
  public q(String paramString1, VersionInfoParcel paramVersionInfoParcel, String paramString2, JSONObject paramJSONObject, boolean paramBoolean1, boolean paramBoolean2)
  {
    d = b;
    b = paramJSONObject;
    c = paramString1;
    a = paramString2;
    e = paramBoolean1;
    f = paramBoolean2;
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return d;
  }
  
  public JSONObject c()
  {
    return b;
  }
  
  public String d()
  {
    return c;
  }
  
  public boolean e()
  {
    return e;
  }
  
  public boolean f()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */