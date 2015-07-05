package com.yelp.android.debug;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.n;
import com.yelp.android.services.d;
import com.yelp.android.services.x;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;

public class Debug
{
  public static String[] c = { "yelp4.5:///user/check_in_offers", "yelp4.5:///search?check_in_offers=1", "yelp4.2:///user/badge/", "yelp4:///biz/89ahv989w8hj4", "yelp4:///search?terms=Beer&category=bars&location=435+Hayes+St,+SF" };
  SharedPreferences a;
  public boolean b;
  private final n d;
  private SSLSocketFactory e;
  private boolean f;
  private boolean g;
  private String h;
  
  public Debug(Context paramContext, n paramn)
  {
    d = paramn;
    a = paramContext.getSharedPreferences("yelp.android.debug", 0);
    g = a.getBoolean("gzip", true);
    b = true;
    a(paramContext);
  }
  
  public void a(Context paramContext)
  {
    e = SSLSocketFactory.getSocketFactory();
    d.a(e);
  }
  
  public void a(Context paramContext, boolean paramBoolean)
  {
    f = paramBoolean;
    a.edit().putBoolean("start_intent", paramBoolean).commit();
  }
  
  public void a(Debug.ApiEndpoint paramApiEndpoint, Context paramContext)
  {
    x.a(paramApiEndpoint);
    d.a(x.g());
    a.edit().putString("endpoint", paramApiEndpoint.name()).commit();
  }
  
  public void a(h paramh, Context paramContext)
  {
    x.a(paramh);
    d.a(x.g());
    a.edit().putString("hostAddress", paramh.a()).commit();
  }
  
  public void a(String paramString)
  {
    h = paramString;
    a.edit().putString("debugSession", paramString).commit();
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
    a.edit().putBoolean("gzip", paramBoolean).commit();
  }
  
  public boolean a()
  {
    return f;
  }
  
  public Intent b(Context paramContext)
  {
    try
    {
      paramContext = new Intent(paramContext, Class.forName("com.yelp.android.debug.ActivityDebugButtonThemes"));
      return paramContext;
    }
    catch (ClassNotFoundException paramContext) {}
    return null;
  }
  
  public void b(boolean paramBoolean)
  {
    a.edit().putBoolean("search_cache", paramBoolean).commit();
  }
  
  public boolean b()
  {
    return a.getBoolean("search_cache", true);
  }
  
  public void c(boolean paramBoolean)
  {
    a.edit().putBoolean("dfp_dev", paramBoolean).commit();
  }
  
  public boolean c()
  {
    return g;
  }
  
  public void d(boolean paramBoolean)
  {
    a.edit().putBoolean("show_yelplog_toasts", paramBoolean).commit();
  }
  
  public boolean d()
  {
    return a.getBoolean("dfp_dev", true);
  }
  
  public boolean e()
  {
    return a.getBoolean("show_yelplog_toasts", false);
  }
  
  public String f()
  {
    return h;
  }
  
  public SocketFactory g()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.Debug
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */