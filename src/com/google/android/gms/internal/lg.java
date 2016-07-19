package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api.ApiOptions.Optional;

public final class lg
  implements Api.ApiOptions.Optional
{
  public static final lg a = new a().a();
  private final boolean b;
  private final boolean c;
  private final String d;
  private final boolean e;
  private final String f;
  private final boolean g;
  
  private lg(boolean paramBoolean1, boolean paramBoolean2, String paramString1, boolean paramBoolean3, String paramString2, boolean paramBoolean4)
  {
    b = paramBoolean1;
    c = paramBoolean2;
    d = paramString1;
    e = paramBoolean3;
    g = paramBoolean4;
    f = paramString2;
  }
  
  public boolean a()
  {
    return b;
  }
  
  public boolean b()
  {
    return c;
  }
  
  public String c()
  {
    return d;
  }
  
  public boolean d()
  {
    return e;
  }
  
  public String e()
  {
    return f;
  }
  
  public boolean f()
  {
    return g;
  }
  
  public static final class a
  {
    private boolean a;
    private boolean b;
    private String c;
    private boolean d;
    private String e;
    private boolean f;
    
    public lg a()
    {
      return new lg(a, b, c, d, e, f, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */