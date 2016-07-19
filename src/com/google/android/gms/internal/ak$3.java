package com.google.android.gms.internal;

import android.content.SharedPreferences;

final class ak$3
  extends ak<Long>
{
  ak$3(int paramInt, String paramString, Long paramLong)
  {
    super(paramInt, paramString, paramLong, null);
  }
  
  public Long b(SharedPreferences paramSharedPreferences)
  {
    return Long.valueOf(paramSharedPreferences.getLong(a(), ((Long)b()).longValue()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ak.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */