package com.google.android.gms.internal;

import android.content.SharedPreferences;

final class ak$1
  extends ak<Boolean>
{
  ak$1(int paramInt, String paramString, Boolean paramBoolean)
  {
    super(paramInt, paramString, paramBoolean, null);
  }
  
  public Boolean b(SharedPreferences paramSharedPreferences)
  {
    return Boolean.valueOf(paramSharedPreferences.getBoolean(a(), ((Boolean)b()).booleanValue()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ak.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */