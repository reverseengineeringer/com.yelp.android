package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.km.a;

public class FlagProviderImpl
  extends km.a
{
  private boolean a = false;
  private SharedPreferences b;
  
  public boolean getBooleanFlagValue(String paramString, boolean paramBoolean, int paramInt)
  {
    return a.a.a(b, paramString, Boolean.valueOf(paramBoolean)).booleanValue();
  }
  
  public int getIntFlagValue(String paramString, int paramInt1, int paramInt2)
  {
    return a.b.a(b, paramString, Integer.valueOf(paramInt1)).intValue();
  }
  
  public long getLongFlagValue(String paramString, long paramLong, int paramInt)
  {
    return a.c.a(b, paramString, Long.valueOf(paramLong)).longValue();
  }
  
  public String getStringFlagValue(String paramString1, String paramString2, int paramInt)
  {
    return a.d.a(b, paramString1, paramString2);
  }
  
  public void init(c paramc)
  {
    paramc = (Context)d.a(paramc);
    if (a) {
      return;
    }
    try
    {
      b = b.a(paramc.createPackageContext("com.google.android.gms", 0));
      a = true;
      return;
    }
    catch (PackageManager.NameNotFoundException paramc) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.flags.impl.FlagProviderImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */