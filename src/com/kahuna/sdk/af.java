package com.kahuna.sdk;

import android.util.Log;

class af
{
  private final String a = "KahunaSDK";
  private final String b;
  
  af(String paramString)
  {
    b = paramString;
  }
  
  protected void a(int paramInt, String paramString, Object... paramVarArgs)
  {
    if (Log.isLoggable(a, paramInt))
    {
      paramString = String.format(paramString, paramVarArgs);
      Log.println(paramInt, a, b + paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */