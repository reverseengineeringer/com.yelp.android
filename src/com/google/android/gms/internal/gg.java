package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

@ey
public final class gg
{
  public static void a(Context paramContext, boolean paramBoolean)
  {
    paramContext = n(paramContext).edit();
    paramContext.putBoolean("use_https", paramBoolean);
    paramContext.commit();
  }
  
  private static SharedPreferences n(Context paramContext)
  {
    return paramContext.getSharedPreferences("admob", 0);
  }
  
  public static boolean o(Context paramContext)
  {
    return n(paramContext).getBoolean("use_https", true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */