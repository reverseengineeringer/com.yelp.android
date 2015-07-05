package com.google.android.gms.internal;

import com.google.android.gms.common.api.Scope;

public class lm
{
  public static Scope[] d(String[] paramArrayOfString)
  {
    jx.b(paramArrayOfString, "scopeStrings can't be null.");
    Scope[] arrayOfScope = new Scope[paramArrayOfString.length];
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      arrayOfScope[i] = new Scope(paramArrayOfString[i]);
      i += 1;
    }
    return arrayOfScope;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */