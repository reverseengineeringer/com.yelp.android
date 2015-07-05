package com.crashlytics.android.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;

public class aj
{
  private final String a;
  private final Context b;
  
  public aj(ck paramck)
  {
    if (paramck.w() == null) {
      throw new IllegalStateException("Cannot get directory before context has been set. Call Sdk.start() first");
    }
    b = paramck.w();
    a = paramck.getClass().getName();
  }
  
  public SharedPreferences a()
  {
    return b.getSharedPreferences(a, 0);
  }
  
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
    return a().edit();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */