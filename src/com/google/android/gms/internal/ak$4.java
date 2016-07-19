package com.google.android.gms.internal;

import android.content.SharedPreferences;

final class ak$4
  extends ak<String>
{
  ak$4(int paramInt, String paramString1, String paramString2)
  {
    super(paramInt, paramString1, paramString2, null);
  }
  
  public String b(SharedPreferences paramSharedPreferences)
  {
    return paramSharedPreferences.getString(a(), (String)b());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ak.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */