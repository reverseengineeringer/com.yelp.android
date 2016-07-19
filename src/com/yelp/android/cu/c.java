package com.yelp.android.cu;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import io.fabric.sdk.android.h;

public class c
  implements b
{
  private final SharedPreferences a;
  private final String b;
  private final Context c;
  
  public c(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
    }
    c = paramContext;
    b = paramString;
    a = c.getSharedPreferences(b, 0);
  }
  
  public c(h paramh)
  {
    this(paramh.B(), paramh.getClass().getName());
  }
  
  public SharedPreferences a()
  {
    return a;
  }
  
  @TargetApi(9)
  public boolean a(SharedPreferences.Editor paramEditor)
  {
    if (Build.VERSION.SDK_INT >= 9)
    {
      paramEditor.apply();
      return true;
    }
    return paramEditor.commit();
  }
  
  public SharedPreferences.Editor b()
  {
    return a.edit();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cu.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */