package com.kahuna.sdk;

import android.util.Log;

class r
{
  private final String a = "Kahuna";
  private final String b;
  
  r(String paramString)
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
 * Qualified Name:     com.kahuna.sdk.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */