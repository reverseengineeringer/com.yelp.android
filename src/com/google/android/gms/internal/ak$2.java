package com.google.android.gms.internal;

import android.content.SharedPreferences;

final class ak$2
  extends ak<Integer>
{
  ak$2(int paramInt, String paramString, Integer paramInteger)
  {
    super(paramInt, paramString, paramInteger, null);
  }
  
  public Integer b(SharedPreferences paramSharedPreferences)
  {
    return Integer.valueOf(paramSharedPreferences.getInt(a(), ((Integer)b()).intValue()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ak.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */