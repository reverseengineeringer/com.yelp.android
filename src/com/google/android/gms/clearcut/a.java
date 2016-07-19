package com.google.android.gms.clearcut;

import android.content.Context;
import android.content.SharedPreferences;

public class a
{
  public static final a a = new a();
  private static int b = -1;
  
  public int a(Context paramContext)
  {
    if (b < 0) {
      b = paramContext.getSharedPreferences("bootCount", 0).getInt("bootCount", 1);
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.clearcut.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */