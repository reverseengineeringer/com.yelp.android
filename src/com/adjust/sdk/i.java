package com.adjust.sdk;

import android.util.Log;
import java.util.Locale;

public class i
  implements Logger
{
  private Logger.LogLevel a;
  
  public i()
  {
    a(Logger.LogLevel.INFO);
  }
  
  public void a(Logger.LogLevel paramLogLevel)
  {
    a = paramLogLevel;
  }
  
  public void a(String paramString)
  {
    if (paramString != null) {}
    try
    {
      a(Logger.LogLevel.valueOf(paramString.toUpperCase(Locale.US)));
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      f(String.format("Malformed logLevel '%s', falling back to 'info'", new Object[] { paramString }));
    }
  }
  
  public void b(String paramString)
  {
    if (a.androidLogLevel <= 2) {
      Log.v("Adjust", paramString);
    }
  }
  
  public void c(String paramString)
  {
    if (a.androidLogLevel <= 3) {
      Log.d("Adjust", paramString);
    }
  }
  
  public void d(String paramString)
  {
    if (a.androidLogLevel <= 4) {
      Log.i("Adjust", paramString);
    }
  }
  
  public void e(String paramString)
  {
    if (a.androidLogLevel <= 5) {
      Log.w("Adjust", paramString);
    }
  }
  
  public void f(String paramString)
  {
    if (a.androidLogLevel <= 6) {
      Log.e("Adjust", paramString);
    }
  }
  
  public void g(String paramString)
  {
    Log.println(7, "Adjust", paramString);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */