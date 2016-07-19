package com.facebook.internal;

import android.content.Context;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookException;

public class w$a
{
  private Context a;
  private String b;
  private String c;
  private int d = 16973840;
  private w.c e;
  private Bundle f;
  private AccessToken g;
  
  public w$a(Context paramContext, String paramString, Bundle paramBundle)
  {
    g = AccessToken.a();
    if (g == null)
    {
      String str = u.a(paramContext);
      if (str != null) {
        b = str;
      }
    }
    else
    {
      a(paramContext, paramString, paramBundle);
      return;
    }
    throw new FacebookException("Attempted to create a builder without a valid access token or a valid default Application ID.");
  }
  
  public w$a(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
  {
    String str = paramString1;
    if (paramString1 == null) {
      str = u.a(paramContext);
    }
    v.a(str, "applicationId");
    b = str;
    a(paramContext, paramString2, paramBundle);
  }
  
  private void a(Context paramContext, String paramString, Bundle paramBundle)
  {
    a = paramContext;
    c = paramString;
    if (paramBundle != null)
    {
      f = paramBundle;
      return;
    }
    f = new Bundle();
  }
  
  public a a(w.c paramc)
  {
    e = paramc;
    return this;
  }
  
  public w a()
  {
    if (g != null)
    {
      f.putString("app_id", g.h());
      f.putString("access_token", g.b());
    }
    for (;;)
    {
      return new w(a, c, f, d, e);
      f.putString("app_id", b);
    }
  }
  
  public String b()
  {
    return b;
  }
  
  public Context c()
  {
    return a;
  }
  
  public int d()
  {
    return d;
  }
  
  public Bundle e()
  {
    return f;
  }
  
  public w.c f()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.w.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */